.class public Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
.super Ljava/lang/Object;
.source "LocatorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/locator/LocatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheReference"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move-object v2, p2

    .local v2, "mimeType":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 118
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;->buffer:Ljava/nio/ByteBuffer;

    .line 119
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;->mimeType:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;->buffer:Ljava/nio/ByteBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;->mimeType:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheReference;
    return-object v0
.end method
