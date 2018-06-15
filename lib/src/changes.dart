// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dart2_fix/src/model.dart';

/// Dart 2.0 deprecations.
///
/// In the future, we should drive this via improved deprecation annotations.
final Map<String, String> _textReplacements = {
  // dart:async
  'Zone.ROOT': 'Zone.root',

  // dart:core
  'DateTime.MONDAY': 'DateTime.monday',
  'DateTime.TUESDAY': 'DateTime.tuesday',
  'DateTime.WEDNESDAY': 'DateTime.wednesday',
  'DateTime.THURSDAY': 'DateTime.thursday',
  'DateTime.FRIDAY': 'DateTime.friday',
  'DateTime.SATURDAY': 'DateTime.saturday',
  'DateTime.SUNDAY': 'DateTime.sunday',
  'DateTime.DAYS_PER_WEEK': 'DateTime.daysPerWeek',
  'DateTime.JANUARY': 'DateTime.january',
  'DateTime.FEBRUARY': 'DateTime.february',
  'DateTime.MARCH': 'DateTime.march',
  'DateTime.APRIL': 'DateTime.april',
  'DateTime.MAY': 'DateTime.may',
  'DateTime.JUNE': 'DateTime.june',
  'DateTime.JULY': 'DateTime.july',
  'DateTime.AUGUST': 'DateTime.august',
  'DateTime.SEPTEMBER': 'DateTime.september',
  'DateTime.OCTOBER': 'DateTime.october',
  'DateTime.NOVEMBER': 'DateTime.november',
  'DateTime.DECEMBER': 'DateTime.december',
  'DateTime.MONTHS_PER_YEAR': 'DateTime.monthsPerYear',

  'double.NAN': 'double.nan',
  'double.INFINITY': 'double.infinity',
  'double.NEGATIVE_INFINITY': 'double.negativeInfinity',
  'double.MIN_POSITIVE': 'double.minPositive',
  'double.MAX_FINITE': 'double.maxFinite',

  'Duration.MICROSECONDS_PER_MILLISECOND':
      'Duration.microsecondsPerMillisecond',
  'Duration.MILLISECONDS_PER_SECOND': 'Duration.millisecondsPerSecond',
  'Duration.SECONDS_PER_MINUTE': 'Duration.secondsPerMinute',
  'Duration.MINUTES_PER_HOUR': 'Duration.minutesPerHour',

  'Duration.HOURS_PER_DAY': 'Duration.hoursPerDay',
  'Duration.MICROSECONDS_PER_SECOND': 'Duration.microsecondsPerSecond',
  'Duration.MICROSECONDS_PER_MINUTE': 'Duration.microsecondsPerMinute',
  'Duration.MICROSECONDS_PER_HOUR': 'Duration.microsecondsPerHour',

  'Duration.MICROSECONDS_PER_DAY': 'Duration.millisecondsPerMinute',
  'Duration.MILLISECONDS_PER_MINUTE': 'Duration.millisecondsPerMinute',
  'Duration.MILLISECONDS_PER_HOUR': 'Duration.millisecondsPerHour',
  'Duration.MILLISECONDS_PER_DAY': 'Duration.millisecondsPerDay',

  'Duration.SECONDS_PER_HOUR': 'Duration.secondsPerHour',
  'Duration.SECONDS_PER_DAY': 'Duration.secondsPerDay',
  'Duration.MINUTES_PER_DAY': 'Duration.minutesPerDay',
  'Duration.ZERO': 'Duration.zero',

  // dart:isolate
  'Isolate.IMMEDIATE': 'Isolate.immediate',
  'Isolate.BEFORE_NEXT_EVENT': 'Isolate.beforeNextEvent',

  // dart:typed_data
  'Endianness.BIG_ENDIAN': 'Endian.big',
  'Endianness.LITTLE_ENDIAN': 'Endian.little',
  'Endianness.HOST_ENDIAN': 'Endian.host',
  'Int8List.BYTES_PER_ELEMENT': 'Int8List.bytesPerElement',
  // and, other (long tail) dart:typed_data renames omitted

  // Note, for the dart:io changes, we omit checking for top-level READ, WRITE,
  // APPEND, WRITE_ONLY, and WRITE_ONLY_APPEND as those may have false positives.

  // dart:io/data_transformer.dart
  'ZLIB': 'zlib',
  'GZIP': 'gzip',
  'ZLibOption.MIN_WINDOW_BITS': 'ZLibOption.minWindowBits',
  'ZLibOption.MAX_WINDOW_BITS': 'ZLibOption.maxWindowBits',
  'ZLibOption.DEFAULT_WINDOW_BITS': 'ZLibOption.defaultWindowBits',
  'ZLibOption.MIN_LEVEL': 'ZLibOption.minLevel',
  'ZLibOption.MAX_LEVEL': 'ZLibOption.maxLevel',
  'ZLibOption.DEFAULT_LEVEL': 'ZLibOption.defaultLevel',
  'ZLibOption.MIN_MEM_LEVEL': 'ZLibOption.minMemLevel',
  'ZLibOption.MAX_MEM_LEVEL': 'ZLibOption.maxMemLevel',
  'ZLibOption.DEFAULT_MEM_LEVEL': 'ZLibOption.defaultMemLevel',
  'ZLibOption.STRATEGY_FILTERED': 'ZLibOption.strategyFiltered',
  'ZLibOption.STRATEGY_HUFFMAN_ONLY': 'ZLibOption.strategyHuffmanOnly',
  'ZLibOption.STRATEGY_RLE': 'ZLibOption.strategyRle',
  'ZLibOption.STRATEGY_FIXED': 'ZLibOption.strategyFixed',
  'ZLibOption.STRATEGY_DEFAULT': 'ZLibOption.strategyDefault',

  // dart:io/file.dart
  'FileMode.READ': 'FileMode.read',
  'FileMode.WRITE': 'FileMode.write',
  'FileMode.APPEND': 'FileMode.append',
  'FileMode.WRITE_ONLY': 'FileMode.writeOnly',
  'FileMode.WRITE_ONLY_APPEND': 'FileMode.writeOnlyAppend',
  'FileLock.SHARED': 'FileLock.shared',
  'FileLock.EXCLUSIVE': 'FileLock.exclusive',
  'FileLock.BLOCKING_SHARED': 'FileLock.blockingShared',
  'FileLock.BLOCKING_EXCLUSIVE': 'FileLock.blockingExclusive',

  // dart:io/file_system_entity.dart
  'FileSystemEntityType.FILE': 'FileSystemEntityType.file',
  'FileSystemEntityType.DIRECTORY': 'FileSystemEntityType.directory',
  'FileSystemEntityType.LINK': 'FileSystemEntityType.link',
  'FileSystemEntityType.NOT_FOUND': 'FileSystemEntityType.notFound',
  'FileSystemEvent.CREATE': 'FileSystemEvent.create',
  'FileSystemEvent.MODIFY': 'FileSystemEvent.modify',
  'FileSystemEvent.DELETE': 'FileSystemEvent.delete',
  'FileSystemEvent.MOVE': 'FileSystemEvent.move',
  'FileSystemEvent.ALL': 'FileSystemEvent.all',

  // dart:io/process.dart
  'ProcessStartMode.NORMAL': 'ProcessStartMode.normal',
  'ProcessStartMode.INHERIT_STDIO': 'ProcessStartMode.inheritStdio',
  'ProcessStartMode.DETACHED': 'ProcessStartMode.detached',
  'ProcessStartMode.DETACHED_WITH_STDIO': 'ProcessStartMode.detachedWithStdio',
  'ProcessSignal.SIGHUP': 'ProcessSignal.sighup',
  'ProcessSignal.SIGINT': 'ProcessSignal.sigint',
  'ProcessSignal.SIGQUIT': 'ProcessSignal.sigquit',
  'ProcessSignal.SIGILL': 'ProcessSignal.sigill',
  'ProcessSignal.SIGTRAP': 'ProcessSignal.sigtrap',
  'ProcessSignal.SIGABRT': 'ProcessSignal.sigabrt',
  'ProcessSignal.SIGBUS': 'ProcessSignal.sigbus',
  'ProcessSignal.SIGFPE': 'ProcessSignal.sigfpe',
  'ProcessSignal.SIGKILL': 'ProcessSignal.sigkill',
  'ProcessSignal.SIGUSR1': 'ProcessSignal.sigusr1',
  'ProcessSignal.SIGSEGV': 'ProcessSignal.sigsegv',
  'ProcessSignal.SIGUSR2': 'ProcessSignal.sigusr2',
  'ProcessSignal.SIGPIPE': 'ProcessSignal.sigpipe',
  'ProcessSignal.SIGALRM': 'ProcessSignal.sigalrm',
  'ProcessSignal.SIGTERM': 'ProcessSignal.sigterm',
  'ProcessSignal.SIGCHLD': 'ProcessSignal.sigchld',
  'ProcessSignal.SIGCONT': 'ProcessSignal.sigcont',
  'ProcessSignal.SIGSTOP': 'ProcessSignal.sigstop',
  'ProcessSignal.SIGTSTP': 'ProcessSignal.sigtstp',
  'ProcessSignal.SIGTTIN': 'ProcessSignal.sigttin',
  'ProcessSignal.SIGTTOU': 'ProcessSignal.sigttou',
  'ProcessSignal.SIGURG': 'ProcessSignal.sigurg',
  'ProcessSignal.SIGXCPU': 'ProcessSignal.sigxcpu',
  'ProcessSignal.SIGXFSZ': 'ProcessSignal.sigxfsz',
  'ProcessSignal.SIGVTALRM': 'ProcessSignal.sigvtalrm',
  'ProcessSignal.SIGPROF': 'ProcessSignal.sigprof',
  'ProcessSignal.SIGWINCH': 'ProcessSignal.sigwinch',
  'ProcessSignal.SIGPOLL': 'ProcessSignal.sigpoll',
  'ProcessSignal.SIGSYS': 'ProcessSignal.sigsys',

  // dart:io/socket.dart
  'InternetAddressType.TERMINAL': 'InternetAddressType.terminal',
  'InternetAddressType.IP_V4': 'InternetAddressType.IPv4',
  'InternetAddressType.IP_V6': 'InternetAddressType.IPv6',
  'InternetAddressType.ANY': 'InternetAddressType.any',
  'InternetAddress.LOOPBACK_IP_V4': 'InternetAddress.loopbackIPv4',
  'InternetAddress.LOOPBACK_IP_V6': 'InternetAddress.loopbackIPv6',
  'InternetAddress.ANY_IP_V4': 'InternetAddress.anyIPv4',
  'InternetAddress.ANY_IP_V6': 'InternetAddress.anyIPv6',
  'SocketDirection.RECEIVE': 'SocketDirection.receive',
  'SocketDirection.SEND': 'SocketDirection.send',
  'SocketDirection.BOTH': 'SocketDirection.both',
  'SocketOption.TCP_NODELAY': 'SocketOption.tcpNoDelay',
  'RawSocketEvent.READ': 'RawSocketEvent.read',
  'RawSocketEvent.WRITE': 'RawSocketEvent.write',
  'RawSocketEvent.READ_CLOSED': 'RawSocketEvent.readClosed',
  'RawSocketEvent.CLOSED': 'RawSocketEvent.closed',

  // dart:io/stdio.dart
  'StdioType.TERMINAL': 'StdioType.terminal',
  'StdioType.PIPE': 'StdioType.pipe',
  'StdioType.FILE': 'StdioType.file',
  'StdioType.OTHER': 'StdioType.other',

  // dart:io/string_transformer.dart
  'SYSTEM_ENCODING': 'systemEncoding',

  // dart:_http/http.dart
  'HttpStatus.CONTINUE': 'HttpStatus.continue_',
  'HttpStatus.SWITCHING_PROTOCOLS': 'HttpStatus.switchingProtocols',
  'HttpStatus.OK': 'HttpStatus.ok',
  'HttpStatus.CREATED': 'HttpStatus.created',
  'HttpStatus.ACCEPTED': 'HttpStatus.accepted',
  'HttpStatus.NON_AUTHORITATIVE_INFORMATION':
      'HttpStatus.nonAuthoritativeInformation',
  'HttpStatus.NO_CONTENT': 'HttpStatus.noContent',
  'HttpStatus.RESET_CONTENT': 'HttpStatus.resetContent',
  'HttpStatus.PARTIAL_CONTENT': 'HttpStatus.partialContent',
  'HttpStatus.MULTIPLE_CHOICES': 'HttpStatus.multipleChoices',
  'HttpStatus.MOVED_PERMANENTLY': 'HttpStatus.movedPermanently',
  'HttpStatus.FOUND': 'HttpStatus.found',
  'HttpStatus.MOVED_TEMPORARILY': 'HttpStatus.movedTemporarily',
  'HttpStatus.SEE_OTHER': 'HttpStatus.seeOther',
  'HttpStatus.NOT_MODIFIED': 'HttpStatus.notModified',
  'HttpStatus.USE_PROXY': 'HttpStatus.useProxy',
  'HttpStatus.TEMPORARY_REDIRECT': 'HttpStatus.temporaryRedirect',
  'HttpStatus.BAD_REQUEST': 'HttpStatus.badRequest',
  'HttpStatus.UNAUTHORIZED': 'HttpStatus.unauthorized',
  'HttpStatus.PAYMENT_REQUIRED': 'HttpStatus.paymentRequired',
  'HttpStatus.FORBIDDEN': 'HttpStatus.forbidden',
  'HttpStatus.NOT_FOUND': 'HttpStatus.notFound',
  'HttpStatus.METHOD_NOT_ALLOWED': 'HttpStatus.methodNotAllowed',
  'HttpStatus.NOT_ACCEPTABLE': 'HttpStatus.notAcceptable',
  'HttpStatus.PROXY_AUTHENTICATION_REQUIRED':
      'HttpStatus.proxyAuthenticationRequired',
  'HttpStatus.REQUEST_TIMEOUT': 'HttpStatus.requestTimeout',
  'HttpStatus.CONFLICT': 'HttpStatus.conflict',
  'HttpStatus.GONE': 'HttpStatus.gone',
  'HttpStatus.LENGTH_REQUIRED': 'HttpStatus.lengthRequired',
  'HttpStatus.PRECONDITION_FAILED': 'HttpStatus.preconditionFailed',
  'HttpStatus.REQUEST_ENTITY_TOO_LARGE': 'HttpStatus.requestEntityTooLarge',
  'HttpStatus.REQUEST_URI_TOO_LONG': 'HttpStatus.requestUriTooLong',
  'HttpStatus.UNSUPPORTED_MEDIA_TYPE': 'HttpStatus.unsupportedMediaType',
  'HttpStatus.REQUESTED_RANGE_NOT_SATISFIABLE':
      'HttpStatus.requestedRangeNotSatisfiable',
  'HttpStatus.EXPECTATION_FAILED': 'HttpStatus.expectationFailed',
  'HttpStatus.UPGRADE_REQUIRED': 'HttpStatus.upgradeRequired',
  'HttpStatus.INTERNAL_SERVER_ERROR': 'HttpStatus.internalServerError',
  'HttpStatus.NOT_IMPLEMENTED': 'HttpStatus.notImplemented',
  'HttpStatus.BAD_GATEWAY': 'HttpStatus.badGateway',
  'HttpStatus.SERVICE_UNAVAILABLE': 'HttpStatus.serviceUnavailable',
  'HttpStatus.GATEWAY_TIMEOUT': 'HttpStatus.gatewayTimeout',
  'HttpStatus.HTTP_VERSION_NOT_SUPPORTED': 'HttpStatus.httpVersionNotSupported',
  'HttpStatus.NETWORK_CONNECT_TIMEOUT_ERROR':
      'HttpStatus.networkConnectTimeoutError',

  'HttpHeaders.ACCEPT': 'HttpHeaders.acceptHeader',
  'HttpHeaders.ACCEPT_CHARSET': 'HttpHeaders.acceptCharsetHeader',
  'HttpHeaders.ACCEPT_ENCODING': 'HttpHeaders.acceptEncodingHeader',
  'HttpHeaders.ACCEPT_LANGUAGE': 'HttpHeaders.acceptLanguageHeader',
  'HttpHeaders.ACCEPT_RANGES': 'HttpHeaders.acceptRangesHeader',
  'HttpHeaders.AGE': 'HttpHeaders.ageHeader',
  'HttpHeaders.ALLOW': 'HttpHeaders.allowHeader',
  'HttpHeaders.AUTHORIZATION': 'HttpHeaders.authorizationHeader',
  'HttpHeaders.CACHE_CONTROL': 'HttpHeaders.cacheControlHeader',
  'HttpHeaders.CONNECTION': 'HttpHeaders.connectionHeader',
  'HttpHeaders.CONTENT_ENCODING': 'HttpHeaders.contentEncodingHeader',
  'HttpHeaders.CONTENT_LANGUAGE': 'HttpHeaders.contentLanguageHeader',
  'HttpHeaders.CONTENT_LENGTH': 'HttpHeaders.contentLengthHeader',
  'HttpHeaders.CONTENT_LOCATION': 'HttpHeaders.contentLocationHeader',
  'HttpHeaders.CONTENT_MD5': 'HttpHeaders.contentMD5Header',
  'HttpHeaders.CONTENT_RANGE': 'HttpHeaders.contentRangeHeader',
  'HttpHeaders.CONTENT_TYPE': 'HttpHeaders.contentTypeHeader',
  'HttpHeaders.DATE': 'HttpHeaders.dateHeader',
  'HttpHeaders.ETAG': 'HttpHeaders.etagHeader',
  'HttpHeaders.EXPECT': 'HttpHeaders.expectHeader',
  'HttpHeaders.EXPIRES': 'HttpHeaders.expiresHeader',
  'HttpHeaders.FROM': 'HttpHeaders.fromHeader',
  'HttpHeaders.HOST': 'HttpHeaders.hostHeader',
  'HttpHeaders.IF_MATCH': 'HttpHeaders.ifMatchHeader',
  'HttpHeaders.IF_MODIFIED_SINCE': 'HttpHeaders.ifModifiedSinceHeader',
  'HttpHeaders.IF_NONE_MATCH': 'HttpHeaders.ifNoneMatchHeader',
  'HttpHeaders.IF_RANGE': 'HttpHeaders.ifRangeHeader',
  'HttpHeaders.IF_UNMODIFIED_SINCE': 'HttpHeaders.ifUnmodifiedSinceHeader',
  'HttpHeaders.LAST_MODIFIED': 'HttpHeaders.lastModifiedHeader',
  'HttpHeaders.LOCATION': 'HttpHeaders.locationHeader',
  'HttpHeaders.MAX_FORWARDS': 'HttpHeaders.maxForwardsHeader',
  'HttpHeaders.PRAGMA': 'HttpHeaders.pragmaHeader',
  'HttpHeaders.PROXY_AUTHENTICATE': 'HttpHeaders.proxyAuthenticateHeader',
  'HttpHeaders.PROXY_AUTHORIZATION': 'HttpHeaders.proxyAuthorizationHeader',
  'HttpHeaders.RANGE': 'HttpHeaders.rangeHeader',
  'HttpHeaders.REFERER': 'HttpHeaders.refererHeader',
  'HttpHeaders.RETRY_AFTER': 'HttpHeaders.retryAfterHeader',
  'HttpHeaders.SERVER': 'HttpHeaders.serverHeader',
  'HttpHeaders.TE': 'HttpHeaders.teHeader',
  'HttpHeaders.TRAILER': 'HttpHeaders.trailerHeader',
  'HttpHeaders.TRANSFER_ENCODING': 'HttpHeaders.transferEncodingHeader',
  'HttpHeaders.UPGRADE': 'HttpHeaders.upgradeHeader',
  'HttpHeaders.USER_AGENT': 'HttpHeaders.userAgentHeader',
  'HttpHeaders.VARY': 'HttpHeaders.varyHeader',
  'HttpHeaders.VIA': 'HttpHeaders.viaHeader',
  'HttpHeaders.WARNING': 'HttpHeaders.warningHeader',
  'HttpHeaders.WWW_AUTHENTICATE': 'HttpHeaders.wwwAuthenticateHeader',

  'HttpHeaders.COOKIE': 'HttpHeaders.cookieHeader',
  'HttpHeaders.SET_COOKIE': 'HttpHeaders.setCookieHeader',

  'HttpHeaders.GENERAL_HEADERS': 'HttpHeaders.generalHeaders',
  'HttpHeaders.ENTITY_HEADERS': 'HttpHeaders.entityHeaders',
  'HttpHeaders.RESPONSE_HEADERS': 'HttpHeaders.responseHeaders',
  'HttpHeaders.REQUEST_HEADERS': 'HttpHeaders.requestHeaders',

  'ContentType.TEXT': 'ContentType.text',
  'ContentType.HTML': 'ContentType.html',
  'ContentType.JSON': 'ContentType.json',
  'ContentType.BINARY': 'ContentType.binary',

  'HttpClient.DEFAULT_HTTP_PORT': 'HttpClient.defaultHttpPort',
  'HttpClient.DEFAULT_HTTPS_PORT': 'HttpClient.defaultHttpsPort',

  // dart:_http/websocket.dart
  'WebSocketStatus.NORMAL_CLOSURE': 'WebSocketStatus.normalClosure',
  'WebSocketStatus.GOING_AWAY': 'WebSocketStatus.goingAway',
  'WebSocketStatus.PROTOCOL_ERROR': 'WebSocketStatus.protocolError',
  'WebSocketStatus.UNSUPPORTED_DATA': 'WebSocketStatus.unsupportedData',
  'WebSocketStatus.RESERVED_1004': 'WebSocketStatus.reserved1004',
  'WebSocketStatus.NO_STATUS_RECEIVED': 'WebSocketStatus.noStatusReceived',
  'WebSocketStatus.ABNORMAL_CLOSURE': 'WebSocketStatus.abnormalClosure',
  'WebSocketStatus.INVALID_FRAME_PAYLOAD_DATA':
      'WebSocketStatus.invalidFramePayloadData',
  'WebSocketStatus.POLICY_VIOLATION': 'WebSocketStatus.policyViolation',
  'WebSocketStatus.MESSAGE_TOO_BIG': 'WebSocketStatus.messageTooBig',
  'WebSocketStatus.MISSING_MANDATORY_EXTENSION':
      'WebSocketStatus.missingMandatoryExtension',
  'WebSocketStatus.INTERNAL_SERVER_ERROR':
      'WebSocketStatus.internalServerError',
  'WebSocketStatus.RESERVED_1015': 'WebSocketStatus.reserved1015',

  'CompressionOptions.DEFAULT': 'CompressionOptions.compressionDefault',
  'CompressionOptions.OFF': 'CompressionOptions.compressionOff',

  'WebSocket.CONNECTING': 'WebSocket.connecting',
  'WebSocket.OPEN': 'WebSocket.open',
  'WebSocket.CLOSING': 'WebSocket.closing',
  'WebSocket.CLOSED': 'WebSocket.closed',

  // Unqualified/top-level declarations checked after qualified ones.

  // dart:math
  'E': 'e',
  'LN10': 'ln10',
  'LN2': 'ln2',
  'LOG2E': 'log2e',
  'LOG10E': 'log10e',
  'PI': 'pi',
  'SQRT1_2': 'sqrt1_2',
  'SQRT2': 'sqrt2',

  // dart:convert
  '{JSON}.encode': 'jsonEncode',
  '{JSON}.decode': 'jsonDecode',
  '{BASE64}.encode': 'base64Encode',
  '{BASE64}.decode': 'base64Decode',

  'ASCII': 'ascii',
  'BASE64': 'base64',
  'BASE64URL': 'base64Url',
  'HTML_ESCAPE': 'htmlEscape',
  'UNKOWN': 'unknown',
  'ATTRIBUTE': 'attribute',
  'SQ_ATTRIBUTE': 'sqAttribute',
  'ELEMENT': 'element',
  'JSON': 'json',
  'LATIN1': 'latin1',
  'UNICODE_REPLACEMENT_CHARACTER_RUNE': 'unicodeReplacementCharacterRune',
  'UNICODE_BOM_CHARACTER_RUNE': 'unicodeBomCharacterRune',
  'UTF8': 'utf8',

  // @proxy annotation
  '@{proxy}': '',
};

/// A class that can look up the correct change to perform for a given issue.
class ChangeManager {
  static ChangeManager create() {
    return new ChangeManager._(_textReplacements);
  }

  final Map<String, String> textReplacements;

  Set<String> keys;
  List<ChangeBuilder> changeBuilders;

  ChangeManager._(this.textReplacements) {
    keys = new Set();
    changeBuilders = [];

    for (String pattern in textReplacements.keys) {
      final ChangeBuilder builder =
          new ChangeBuilder(pattern, textReplacements[pattern]);
      keys.add(builder.deprecated);
      changeBuilders.add(builder);
    }
  }

  /// Given an analysis issue, look up the correct change. Returns `null` if
  /// there is no matching change.
  Change getChangeFor(Issue issue) {
    if (!keys.contains(issue.matchingSource)) {
      return null;
    }

    for (ChangeBuilder builder in changeBuilders) {
      if (builder.matches(issue)) {
        return builder.createChange(issue);
      }
    }

    return null;
  }
}

class ChangeBuilder {
  String deprecated;
  int offset;
  String match;
  String replacement;

  ChangeBuilder(String pattern, String replace) {
    this.replacement = replace;

    if (pattern.contains('{')) {
      deprecated =
          pattern.substring(pattern.indexOf('{') + 1, pattern.indexOf('}'));
      match = pattern.replaceAll('{', '').replaceAll('}', '');
      offset = pattern.indexOf('{');
    } else if (pattern.contains('.')) {
      deprecated = pattern.substring(pattern.indexOf('.') + 1);
      match = pattern;
      offset = pattern.length - deprecated.length;
    } else {
      deprecated = pattern;
      offset = 0;
      match = pattern;
    }
  }

  bool matches(Issue issue) {
    if (issue.matchingSource != deprecated) {
      return false;
    }

    final int x = issue.offset - offset;
    if (x < 0 || (x + match.length) > issue.contents.length) {
      return false;
    }

    if (issue.contents.substring(x, x + match.length) == match) {
      return true;
    }

    return false;
  }

  Change createChange(Issue issue) {
    return new TextReplaceChange(
        issue, issue.offset - offset, match, replacement);
  }
}

/// A description of a source change - the type of the change, the location it
/// acts on, and how to perform the change.
abstract class Change implements Comparable<Change> {
  /// A user facing description of the change.
  String get describe;

  /// The offset of the change from the start of the file; used for ordering
  /// purposes.
  int get offset;

  /// The source line of the change - used to display to the user.
  int get line;

  /// Perform the change operation on the given source and return the changed
  /// results.
  String applyTo(String contents);

  int compareTo(Change other) => offset - other.offset;
}

/// An implementation of a Change that is backed by an analysis issue.
class TextReplaceChange extends Change {
  final Issue issue;
  final int offset;
  final String original;
  final String replacement;

  TextReplaceChange(this.issue, this.offset, this.original, this.replacement);

  String get describe =>
      '$original => ${replacement.isEmpty ? "''" : replacement}';

  int get line => issue.line;

  String applyTo(String contents) {
    return contents.substring(0, offset) +
        replacement +
        contents.substring(offset + original.length);
  }
}
