.class Ljavafx/scene/Scene$3$1;
.super Ljavafx/scene/Scene;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Scene$3;->createPopupScene(Ljavafx/scene/Parent;)Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene$3;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene$3;Ljavafx/scene/Parent;)V
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$3$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene$3;
    move-object v2, p2

    .local v2, "root":Ljavafx/scene/Parent;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/Scene$3$1;->this$0:Ljavafx/scene/Scene$3;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;)V

    return-void
.end method


# virtual methods
.method doLayoutPass()V
    .locals 3

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$3$1;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene$3$1;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/Scene$3$1;->resizeRootToPreferredSize(Ljavafx/scene/Parent;)V

    .line 406
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/Scene;->doLayoutPass()V

    .line 407
    return-void
.end method

.method resizeRootOnSceneSizeChange(DD)V
    .locals 0
    .param p1, "newWidth"    # D
    .param p3, "newHeight"    # D

    .prologue
    .line 414
    return-void
.end method
