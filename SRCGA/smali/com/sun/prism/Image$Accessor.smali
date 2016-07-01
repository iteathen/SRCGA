.class abstract Lcom/sun/prism/Image$Accessor;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Accessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/nio/Buffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/prism/Image;


# direct methods
.method constructor <init>(Lcom/sun/prism/Image;)V
    .locals 4

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$Accessor;, "Lcom/sun/prism/Image$Accessor<TI;>;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/prism/Image;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/Image$Accessor;->this$0:Lcom/sun/prism/Image;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getArgb(II)I
.end method

.method public abstract getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<TT;>;TT;I)V"
        }
    .end annotation
.end method

.method public abstract getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[BII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;[BII)V"
        }
    .end annotation
.end method

.method public abstract getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;[III)V"
        }
    .end annotation
.end method

.method public abstract getPlatformPixelFormat()Ljavafx/scene/image/PixelFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/PixelFormat",
            "<TI;>;"
        }
    .end annotation
.end method

.method public abstract isWritable()Z
.end method

.method public abstract promoteToWritableImage()Lcom/sun/javafx/tk/PlatformImage;
.end method

.method public abstract setArgb(III)V
.end method

.method public abstract setPixels(IIIILjavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<TT;>;TT;I)V"
        }
    .end annotation
.end method

.method public abstract setPixels(IIIILjavafx/scene/image/PixelFormat;[BII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;[BII)V"
        }
    .end annotation
.end method

.method public abstract setPixels(IIIILjavafx/scene/image/PixelFormat;[III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;[III)V"
        }
    .end annotation
.end method

.method public abstract setPixels(IIIILjavafx/scene/image/PixelReader;II)V
.end method
