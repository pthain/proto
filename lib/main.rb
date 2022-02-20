# frozen_string_literal: true

require_relative 'logger'
require_relative 'proto'

logger = Logger.new

logger.info('Application has started.')
Proto.new.run
logger.info('Application has ended.')
