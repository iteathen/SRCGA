.class Lcom/sun/prism/Image$ByteRgbAccess;
.super Lcom/sun/prism/Image$ByteAccess;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ByteRgbAccess"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/prism/Image;


# direct methods
.method public constructor <init>(Lcom/sun/prism/Image;Ljava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    .line 1179
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ByteRgbAccess;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/prism/Image;
    move-object v2, p2

    .local v2, "buffer":Ljava/nio/ByteBuffer;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/prism/Image$ByteRgbAccess;->this$0:Lcom/sun/prism/Image;

    .line 1180
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/sun/prism/Image;->FX_ByteRgb_FORMAT:Ljavafx/scene/image/PixelFormat;

    move-object v6, v2

    const/4 v7, 0x3

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/prism/Image$ByteAccess;-><init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Ljava/nio/ByteBuffer;I)V

    .line 1181
    return-void
.end method


# virtual methods
.method public promoteToWritableImage()Lcom/sun/javafx/tk/PlatformImage;
    .locals 2

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$ByteRgbAccess;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image$ByteRgbAccess;->this$0:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->promoteByteRgbToByteBgra()Lcom/sun/prism/Image;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image$ByteRgbAccess;
    return-object v0
.end method
