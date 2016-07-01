.class public Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;
.super Ljava/lang/Object;
.source "ThreadLocalBufferAllocator.java"


# static fields
.field private static tlba:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;->tlba:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBufferAllocator()Lcom/sun/xml/stream/util/BufferAllocator;
    .locals 6

    .prologue
    .line 65
    sget-object v1, Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;->tlba:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    move-object v0, v1

    .line 66
    .local v0, "bAllocatorRef":Ljava/lang/ref/SoftReference;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Lcom/sun/xml/stream/util/BufferAllocator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/xml/stream/util/BufferAllocator;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 68
    sget-object v1, Lcom/sun/xml/stream/util/ThreadLocalBufferAllocator;->tlba:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 71
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/xml/stream/util/BufferAllocator;

    move-object v0, v1

    .end local v0    # "bAllocatorRef":Ljava/lang/ref/SoftReference;
    return-object v0
.end method
