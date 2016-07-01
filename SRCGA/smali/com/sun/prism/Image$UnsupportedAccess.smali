.class Lcom/sun/prism/Image$UnsupportedAccess;
.super Lcom/sun/prism/Image$ByteAccess;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnsupportedAccess"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/prism/Image;


# direct methods
.method private constructor <init>(Lcom/sun/prism/Image;)V
    .locals 9

    .prologue
    .line 1173
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$UnsupportedAccess;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/prism/Image;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/Image$UnsupportedAccess;->this$0:Lcom/sun/prism/Image;

    .line 1174
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/sun/prism/Image$ByteAccess;-><init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;Ljava/nio/ByteBuffer;I)V

    .line 1175
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/prism/Image;Lcom/sun/prism/Image$1;)V
    .locals 5

    .prologue
    .line 1172
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image$UnsupportedAccess;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/prism/Image;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/prism/Image$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/prism/Image$UnsupportedAccess;-><init>(Lcom/sun/prism/Image;)V

    return-void
.end method
