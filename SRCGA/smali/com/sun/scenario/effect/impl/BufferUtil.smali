.class public Lcom/sun/scenario/effect/impl/BufferUtil;
.super Ljava/lang/Object;
.source "BufferUtil.java"


# static fields
.field public static final SIZEOF_BYTE:I = 0x1

.field public static final SIZEOF_DOUBLE:I = 0x8

.field public static final SIZEOF_FLOAT:I = 0x4

.field public static final SIZEOF_INT:I = 0x4

.field public static final SIZEOF_SHORT:I = 0x2

.field private static byteOrderClass:Ljava/lang/Class;

.field private static isCDCFP:Z

.field private static nativeOrderObject:Ljava/lang/Object;

.field private static orderMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/BufferUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/scenario/effect/impl/BufferUtil;->lambda$nativeOrder$465()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$nativeOrder$465()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    const-string v0, "java.nio.ByteOrder"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static nativeOrder(Ljava/nio/ByteBuffer;)V
    .locals 9

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-boolean v2, Lcom/sun/scenario/effect/impl/BufferUtil;->isCDCFP:Z

    if-nez v2, :cond_1

    .line 63
    :try_start_0
    sget-object v2, Lcom/sun/scenario/effect/impl/BufferUtil;->byteOrderClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 64
    invoke-static {}, Lcom/sun/scenario/effect/impl/BufferUtil$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedExceptionAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    sput-object v2, Lcom/sun/scenario/effect/impl/BufferUtil;->byteOrderClass:Ljava/lang/Class;

    .line 66
    const-class v2, Ljava/nio/ByteBuffer;

    const-string v3, "order"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    sget-object v7, Lcom/sun/scenario/effect/impl/BufferUtil;->byteOrderClass:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sun/scenario/effect/impl/BufferUtil;->orderMethod:Ljava/lang/reflect/Method;

    .line 67
    sget-object v2, Lcom/sun/scenario/effect/impl/BufferUtil;->byteOrderClass:Ljava/lang/Class;

    const-string v3, "nativeOrder"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    .line 68
    .local v1, "nativeOrderMethod":Ljava/lang/reflect/Method;
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/sun/scenario/effect/impl/BufferUtil;->nativeOrderObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 75
    .end local v1    # "nativeOrderMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/sun/scenario/effect/impl/BufferUtil;->isCDCFP:Z

    if-nez v2, :cond_1

    .line 77
    :try_start_1
    sget-object v2, Lcom/sun/scenario/effect/impl/BufferUtil;->orderMethod:Ljava/lang/reflect/Method;

    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    sget-object v7, Lcom/sun/scenario/effect/impl/BufferUtil;->nativeOrderObject:Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 79
    .line 82
    :cond_1
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 72
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sun/scenario/effect/impl/BufferUtil;->isCDCFP:Z

    goto :goto_0

    .line 78
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_1
.end method

.method public static newByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 90
    move v0, p0

    .local v0, "numElements":I
    move v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, v2

    .line 91
    .local v1, "bb":Ljava/nio/ByteBuffer;
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/BufferUtil;->nativeOrder(Ljava/nio/ByteBuffer;)V

    .line 92
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "numElements":I
    return-object v0
.end method

.method public static newDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .locals 4

    .prologue
    .line 101
    move v0, p0

    .local v0, "numElements":I
    move v2, v0

    const/16 v3, 0x8

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/BufferUtil;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, v2

    .line 102
    .local v1, "bb":Ljava/nio/ByteBuffer;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "numElements":I
    return-object v0
.end method

.method public static newFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 4

    .prologue
    .line 111
    move v0, p0

    .local v0, "numElements":I
    move v2, v0

    const/4 v3, 0x4

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/BufferUtil;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, v2

    .line 112
    .local v1, "bb":Ljava/nio/ByteBuffer;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "numElements":I
    return-object v0
.end method

.method public static newIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 4

    .prologue
    .line 121
    move v0, p0

    .local v0, "numElements":I
    move v2, v0

    const/4 v3, 0x4

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/BufferUtil;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, v2

    .line 122
    .local v1, "bb":Ljava/nio/ByteBuffer;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "numElements":I
    return-object v0
.end method

.method public static newShortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 4

    .prologue
    .line 131
    move v0, p0

    .local v0, "numElements":I
    move v2, v0

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/BufferUtil;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, v2

    .line 132
    .local v1, "bb":Ljava/nio/ByteBuffer;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "numElements":I
    return-object v0
.end method
