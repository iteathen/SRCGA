.class final Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
.super Ljava/lang/Object;
.source "NativeVideoBuffer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/control/VideoDataBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$VideoBufferDisposer;
    }
.end annotation


# static fields
.field private static final DEBUG_DISPOSED_BUFFERS:Z

.field private static final disposer:Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$VideoBufferDisposer;


# instance fields
.field private cachedBGRARep:Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;

.field private final holdCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private nativePeer:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$VideoBufferDisposer;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$VideoBufferDisposer;-><init>(Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$1;)V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->disposer:Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$VideoBufferDisposer;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 9

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    move-wide v1, p1

    .local v1, "nativePeer":J
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 67
    move-object v3, v0

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->holdCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    .line 69
    return-void
.end method

.method static synthetic access$100(J)V
    .locals 4

    .prologue
    .line 36
    move-wide v0, p0

    .local v0, "x0":J
    move-wide v2, v0

    invoke-static {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeDisposeBuffer(J)V

    return-void
.end method

.method public static createVideoBuffer(J)Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    .locals 8

    .prologue
    .line 61
    move-wide v0, p0

    .local v0, "nativePeer":J
    new-instance v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-wide v5, v0

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;-><init>(J)V

    move-object v2, v3

    .line 62
    .local v2, "buffer":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    move-object v3, v2

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->disposer:Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$VideoBufferDisposer;

    invoke-static {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->addResourceDisposer(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;)V

    .line 63
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "nativePeer":J
    return-object v0
.end method

.method private native nativeConvertToFormat(JI)J
.end method

.method private static native nativeDisposeBuffer(J)V
.end method

.method private native nativeGetBufferForPlane(JI)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetEncodedHeight(J)I
.end method

.method private native nativeGetEncodedWidth(J)I
.end method

.method private native nativeGetFormat(J)I
.end method

.method private native nativeGetHeight(J)I
.end method

.method private native nativeGetPlaneCount(J)I
.end method

.method private native nativeGetPlaneStrides(J)[I
.end method

.method private native nativeGetTimestamp(J)D
.end method

.method private native nativeGetWidth(J)I
.end method

.method private native nativeHasAlpha(J)Z
.end method

.method private native nativeSetDirty(J)V
.end method


# virtual methods
.method public convertToFormat(Lcom/sun/media/jfxmedia/control/VideoFormat;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    .locals 11

    .prologue
    .line 220
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    move-object v2, p1

    .local v2, "newFormat":Lcom/sun/media/jfxmedia/control/VideoFormat;
    const-wide/16 v6, 0x0

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 222
    move-object v6, v2

    sget-object v7, Lcom/sun/media/jfxmedia/control/VideoFormat;->BGRA_PRE:Lcom/sun/media/jfxmedia/control/VideoFormat;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->cachedBGRARep:Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;

    if-eq v6, v7, :cond_0

    .line 223
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->cachedBGRARep:Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->holdFrame()V

    .line 224
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->cachedBGRARep:Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;

    move-object v1, v6

    .line 241
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :goto_0
    return-object v1

    .line 227
    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    move-object v6, v1

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/media/jfxmedia/control/VideoFormat;->getNativeType()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeConvertToFormat(JI)J

    move-result-wide v6

    move-wide v3, v6

    .line 228
    .local v3, "newFrame":J
    const-wide/16 v6, 0x0

    move-wide v8, v3

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 229
    move-wide v6, v3

    invoke-static {v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->createVideoBuffer(J)Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;

    move-result-object v6

    move-object v5, v6

    .line 230
    .local v5, "frame":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    move-object v6, v2

    sget-object v7, Lcom/sun/media/jfxmedia/control/VideoFormat;->BGRA_PRE:Lcom/sun/media/jfxmedia/control/VideoFormat;

    if-ne v6, v7, :cond_1

    .line 231
    move-object v6, v5

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->holdFrame()V

    .line 232
    move-object v6, v1

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->cachedBGRARep:Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;

    .line 234
    :cond_1
    move-object v6, v5

    move-object v1, v6

    goto :goto_0

    .line 236
    .end local v5    # "frame":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_2
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conversion from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->getFormat()Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 241
    .end local v3    # "newFrame":J
    :cond_3
    const/4 v6, 0x0

    move-object v1, v6

    goto :goto_0
.end method

.method public getBufferForPlane(I)Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 114
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    move v2, p1

    .local v2, "plane":I
    const-wide/16 v4, 0x0

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 115
    move-object v4, v1

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeGetBufferForPlane(JI)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v3, v4

    .line 118
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    move-object v4, v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 119
    move-object v4, v3

    move-object v1, v4

    .line 123
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_0
.end method

.method public getEncodedHeight()I
    .locals 6

    .prologue
    .line 158
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 159
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-direct {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeGetEncodedHeight(J)I

    move-result v2

    move v1, v2

    .line 163
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :goto_0
    return v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getEncodedWidth()I
    .locals 6

    .prologue
    .line 148
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 149
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-direct {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeGetEncodedWidth(J)I

    move-result v2

    move v1, v2

    .line 153
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :goto_0
    return v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getFormat()Lcom/sun/media/jfxmedia/control/VideoFormat;
    .locals 6

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 169
    move-object v2, v0

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-direct {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeGetFormat(J)I

    move-result v2

    move v1, v2

    .line 170
    .local v1, "formatType":I
    move v2, v1

    invoke-static {v2}, Lcom/sun/media/jfxmedia/control/VideoFormat;->formatForType(I)Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-result-object v2

    move-object v0, v2

    .line 174
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :goto_0
    return-object v0

    .end local v1    # "formatType":I
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 6

    .prologue
    .line 138
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 139
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-direct {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeGetHeight(J)I

    move-result v2

    move v1, v2

    .line 143
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :goto_0
    return v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getPlaneCount()I
    .locals 6

    .prologue
    .line 189
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 190
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-direct {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeGetPlaneCount(J)I

    move-result v2

    move v1, v2

    .line 194
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :goto_0
    return v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public getPlaneStrides()[I
    .locals 6

    .prologue
    .line 210
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 211
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-direct {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeGetPlaneStrides(J)[I

    move-result-object v2

    move-object v1, v2

    .line 215
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :goto_0
    return-object v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method

.method public getStrideForPlane(I)I
    .locals 8

    .prologue
    .line 199
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    move v2, p1

    .local v2, "planeIndex":I
    const-wide/16 v4, 0x0

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 200
    move-object v4, v1

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeGetPlaneStrides(J)[I

    move-result-object v4

    move-object v3, v4

    .line 201
    .local v3, "strides":[I
    move-object v4, v3

    move v5, v2

    aget v4, v4, v5

    move v1, v4

    .line 205
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    .end local v3    # "strides":[I
    :goto_0
    return v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public getTimestamp()D
    .locals 6

    .prologue
    .line 104
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 105
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-direct {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeGetTimestamp(J)D

    move-result-wide v2

    move-wide v1, v2

    .line 109
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v1, v2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 6

    .prologue
    .line 128
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 129
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-direct {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeGetWidth(J)I

    move-result v2

    move v1, v2

    .line 133
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :goto_0
    return v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public hasAlpha()Z
    .locals 6

    .prologue
    .line 179
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 180
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-direct {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeHasAlpha(J)Z

    move-result v2

    move v1, v2

    .line 184
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :goto_0
    return v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public holdFrame()V
    .locals 6

    .prologue
    .line 74
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 75
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->holdCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 79
    :cond_0
    return-void
.end method

.method public releaseFrame()V
    .locals 6

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 85
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->holdCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_1

    .line 87
    const/4 v2, 0x0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->cachedBGRARep:Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;

    if-eq v2, v3, :cond_0

    .line 88
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->cachedBGRARep:Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->releaseFrame()V

    .line 89
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->cachedBGRARep:Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;

    .line 93
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->removeResourceDisposer(Ljava/lang/Object;)V

    .line 94
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-static {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeDisposeBuffer(J)V

    .line 95
    move-object v2, v1

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    .line 100
    :cond_1
    return-void
.end method

.method public setDirty()V
    .locals 6

    .prologue
    .line 246
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    const-wide/16 v2, 0x0

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 247
    move-object v2, v1

    move-object v3, v1

    iget-wide v3, v3, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-direct {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativeSetDirty(J)V

    .line 251
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NativeVideoBuffer peer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->nativePeer:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->getFormat()Lcom/sun/media/jfxmedia/control/VideoFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->getTimestamp()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    return-object v0
.end method
