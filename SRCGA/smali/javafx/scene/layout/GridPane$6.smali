.class Ljavafx/scene/layout/GridPane$6;
.super Lcom/sun/javafx/collections/TrackableObservableList;
.source "GridPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/GridPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/TrackableObservableList",
        "<",
        "Ljavafx/scene/layout/ColumnConstraints;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/GridPane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/GridPane;)V
    .locals 4

    .prologue
    .line 926
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/GridPane;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/GridPane$6;->this$0:Ljavafx/scene/layout/GridPane;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/scene/layout/ColumnConstraints;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 929
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$6;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/layout/ColumnConstraints;>;"
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 930
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/ColumnConstraints;

    move-object v3, v4

    .line 931
    .local v3, "constraints":Ljavafx/scene/layout/ColumnConstraints;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPane$6;->this$0:Ljavafx/scene/layout/GridPane;

    invoke-static {v4}, Ljavafx/scene/layout/GridPane;->access$600(Ljavafx/scene/layout/GridPane;)Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 932
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/layout/GridPane$6;->this$0:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v4, v5}, Ljavafx/scene/layout/ColumnConstraints;->remove(Ljavafx/scene/Parent;)V

    .line 934
    :cond_0
    goto :goto_1

    .line 935
    .end local v3    # "constraints":Ljavafx/scene/layout/ColumnConstraints;
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/layout/ColumnConstraints;

    move-object v3, v4

    .line 936
    .restart local v3    # "constraints":Ljavafx/scene/layout/ColumnConstraints;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 937
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/layout/GridPane$6;->this$0:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v4, v5}, Ljavafx/scene/layout/ColumnConstraints;->add(Ljavafx/scene/Parent;)V

    .line 939
    :cond_2
    goto :goto_2

    .end local v3    # "constraints":Ljavafx/scene/layout/ColumnConstraints;
    :cond_3
    goto :goto_0

    .line 941
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/layout/GridPane$6;->this$0:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v4}, Ljavafx/scene/layout/GridPane;->requestLayout()V

    .line 942
    return-void
.end method
