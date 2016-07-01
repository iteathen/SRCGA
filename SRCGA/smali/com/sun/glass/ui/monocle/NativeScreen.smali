.class public interface abstract Lcom/sun/glass/ui/monocle/NativeScreen;
.super Ljava/lang/Object;
.source "NativeScreen.java"


# static fields
.field public static final framebufferSwapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/NativeScreen;->framebufferSwapLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract getDPI()I
.end method

.method public abstract getDepth()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getNativeFormat()I
.end method

.method public abstract getNativeHandle()J
.end method

.method public abstract getScale()F
.end method

.method public abstract getScreenCapture()Ljava/nio/ByteBuffer;
.end method

.method public abstract getWidth()I
.end method

.method public abstract shutdown()V
.end method

.method public abstract swapBuffers()V
.end method

.method public abstract uploadPixels(Ljava/nio/Buffer;IIIIF)V
.end method
