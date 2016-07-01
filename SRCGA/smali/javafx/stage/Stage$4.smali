.class Ljavafx/stage/Stage$4;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/scene/image/Image;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/stage/Stage;


# direct methods
.method constructor <init>(Ljavafx/stage/Stage;)V
    .locals 4

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/Stage;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/Stage$4;->this$0:Ljavafx/stage/Stage;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage$4;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/image/Image;>;"
    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 703
    .local v2, "platformImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage$4;->this$0:Ljavafx/stage/Stage;

    invoke-static {v5}, Ljavafx/stage/Stage;->access$500(Ljavafx/stage/Stage;)Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/image/Image;

    move-object v4, v5

    .line 704
    .local v4, "icon":Ljavafx/scene/image/Image;
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 705
    goto :goto_0

    .line 706
    .end local v4    # "icon":Ljavafx/scene/image/Image;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage$4;->this$0:Ljavafx/stage/Stage;

    iget-object v5, v5, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v5, :cond_1

    .line 707
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage$4;->this$0:Ljavafx/stage/Stage;

    iget-object v5, v5, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v6, v2

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKStage;->setIcons(Ljava/util/List;)V

    .line 709
    :cond_1
    return-void
.end method
