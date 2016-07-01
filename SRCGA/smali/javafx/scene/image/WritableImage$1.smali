.class final Ljavafx/scene/image/WritableImage$1;
.super Ljava/lang/Object;
.source "WritableImage.java"

# interfaces
.implements Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/WritableImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTkImageLoader(Ljavafx/scene/image/WritableImage;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage$1;
    move-object v1, p1

    .local v1, "wimg":Ljavafx/scene/image/WritableImage;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/scene/image/WritableImage;->access$100(Ljavafx/scene/image/WritableImage;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/image/WritableImage$1;
    return-object v0
.end method

.method public loadTkImage(Ljavafx/scene/image/WritableImage;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritableImage$1;
    move-object v1, p1

    .local v1, "wimg":Ljavafx/scene/image/WritableImage;
    move-object v2, p2

    .local v2, "loader":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljavafx/scene/image/WritableImage;->access$000(Ljavafx/scene/image/WritableImage;Ljava/lang/Object;)V

    .line 52
    return-void
.end method
