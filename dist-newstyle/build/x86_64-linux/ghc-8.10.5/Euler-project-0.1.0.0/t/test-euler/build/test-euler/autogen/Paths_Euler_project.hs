{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_Euler_project (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/py/.cabal/bin"
libdir     = "/home/py/.cabal/lib/x86_64-linux-ghc-8.10.5/Euler-project-0.1.0.0-inplace-test-euler"
dynlibdir  = "/home/py/.cabal/lib/x86_64-linux-ghc-8.10.5"
datadir    = "/home/py/.cabal/share/x86_64-linux-ghc-8.10.5/Euler-project-0.1.0.0"
libexecdir = "/home/py/.cabal/libexec/x86_64-linux-ghc-8.10.5/Euler-project-0.1.0.0"
sysconfdir = "/home/py/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "Euler_project_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "Euler_project_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "Euler_project_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "Euler_project_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "Euler_project_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "Euler_project_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
