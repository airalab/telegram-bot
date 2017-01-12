-- |
-- Module      :  Web.Telegram.Bot
-- Copyright   :  Alexander Krupenkin 2016
-- License     :  BSD3
--
-- Maintainer  :  email@something.com
-- Stability   :  experimental
-- Portability :  portable
--
-- Telegram Bot API microframework for creating story like
-- command handlers:
--
-- @
--      helloStory :: BotConfig a => Story a
--      helloStory _ = hello <$> question "How your name?"
--                           <*> question "How your surname?"
--                           <*> question "How old are you?"
-- @
--
module Web.Telegram.Bot (
  -- * Exported types
  -- ** API types
    module Web.Telegram.API.Bot.Data
  -- ** Story types
  , ToBotMessage(..)
  , BotMessage(..)
  , BotConfig(..)
  , Answer(..)
  , Token(..)
  , StoryT
  , Story
  , Bot
  -- ** Story makers
  , select
  , replica
  , question
  -- ** Bot runners
  , sendMessageBot
  , storyBot
  , forkBot
  , runBot
  -- ** Re-exports
  , lift
  ) where

import Web.Telegram.API.Bot.Data
import Web.Telegram.Bot.Internal
import Web.Telegram.Bot.Types
import Web.Telegram.Bot.Story
import Web.Telegram.API.Bot
import Pipes (lift)
