.class Ljavafx/scene/image/Image$Animation$1;
.super Ljavafx/beans/property/SimpleIntegerProperty;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/Image$Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/image/Image$Animation;


# direct methods
.method constructor <init>(Ljavafx/scene/image/Image$Animation;)V
    .locals 4

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$Animation$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/image/Image$Animation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/Image$Animation$1;->this$0:Ljavafx/scene/image/Image$Animation;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>()V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 871
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$Animation$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$Animation$1;->this$0:Ljavafx/scene/image/Image$Animation;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/Image$Animation$1;->get()I

    move-result v2

    invoke-static {v1, v2}, Ljavafx/scene/image/Image$Animation;->access$000(Ljavafx/scene/image/Image$Animation;I)V

    .line 872
    return-void
.end method
