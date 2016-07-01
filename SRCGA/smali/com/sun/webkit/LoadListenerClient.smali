.class public interface abstract Lcom/sun/webkit/LoadListenerClient;
.super Ljava/lang/Object;
.source "LoadListenerClient.java"


# static fields
.field public static final CONNECTION_REFUSED:I = 0x4

.field public static final CONNECTION_RESET:I = 0x5

.field public static final CONNECTION_TIMED_OUT:I = 0x7

.field public static final CONTENTTYPE_RECEIVED:I = 0xd

.field public static final CONTENT_RECEIVED:I = 0xa

.field public static final DOCUMENT_AVAILABLE:I = 0xe

.field public static final FILE_NOT_FOUND:I = 0xb

.field public static final ICON_RECEIVED:I = 0xc

.field public static final INVALID_RESPONSE:I = 0x9

.field public static final LOAD_FAILED:I = 0x5

.field public static final LOAD_STOPPED:I = 0x6

.field public static final MALFORMED_URL:I = 0x2

.field public static final NO_ROUTE_TO_HOST:I = 0x6

.field public static final PAGE_FINISHED:I = 0x1

.field public static final PAGE_REDIRECTED:I = 0x2

.field public static final PAGE_STARTED:I = 0x0

.field public static final PERMISSION_DENIED:I = 0x8

.field public static final PROGRESS_CHANGED:I = 0x1e

.field public static final RESOURCE_FAILED:I = 0x17

.field public static final RESOURCE_FINISHED:I = 0x16

.field public static final RESOURCE_REDIRECTED:I = 0x15

.field public static final RESOURCE_STARTED:I = 0x14

.field public static final SSL_HANDSHAKE:I = 0x3

.field public static final TITLE_RECEIVED:I = 0xb

.field public static final TOO_MANY_REDIRECTS:I = 0xa

.field public static final UNKNOWN_ERROR:I = 0x63

.field public static final UNKNOWN_HOST:I = 0x1


# virtual methods
.method public abstract dispatchLoadEvent(JILjava/lang/String;Ljava/lang/String;DI)V
.end method

.method public abstract dispatchResourceLoadEvent(JILjava/lang/String;Ljava/lang/String;DI)V
.end method
