# frozen_string_literal: true

require_relative 'util/logger'
require_relative 'gamestates/proto'

logger = Logger.new

logger.info('Application has started.')
Proto.new.run
logger.info('Application has ended.')
