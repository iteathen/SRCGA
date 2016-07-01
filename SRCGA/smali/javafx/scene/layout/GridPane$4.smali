.class Ljavafx/scene/layout/GridPane$4;
.super Ljavafx/css/StyleableBooleanProperty;
.source "GridPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/GridPane;->gridLinesVisibleProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/GridPane;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/GridPane;)V
    .locals 4

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$4;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/GridPane;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/GridPane$4;->this$0:Ljavafx/scene/layout/GridPane;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableBooleanProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 871
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$4;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$4;->this$0:Ljavafx/scene/layout/GridPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$4;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/GridPane;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$4;
    # getter for: Ljavafx/scene/layout/GridPane$StyleableProperties;->GRID_LINES_VISIBLE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/GridPane$StyleableProperties;->access$400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$4;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 876
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$4;
    const-string v1, "gridLinesVisible"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/GridPane$4;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 853
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/GridPane$4;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/layout/GridPane$4;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$4;->this$0:Ljavafx/scene/layout/GridPane;

    new-instance v2, Ljavafx/scene/Group;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/Group;-><init>()V

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->access$302(Ljavafx/scene/layout/GridPane;Ljavafx/scene/Group;)Ljavafx/scene/Group;

    move-result-object v1

    .line 855
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$4;->this$0:Ljavafx/scene/layout/GridPane;

    invoke-static {v1}, Ljavafx/scene/layout/GridPane;->access$300(Ljavafx/scene/layout/GridPane;)Ljavafx/scene/Group;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/Group;->setManaged(Z)V

    .line 856
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$4;->this$0:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/GridPane$4;->this$0:Ljavafx/scene/layout/GridPane;

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->access$300(Ljavafx/scene/layout/GridPane;)Ljavafx/scene/Group;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 861
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$4;->this$0:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/GridPane;->requestLayout()V

    .line 862
    return-void

    .line 858
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$4;->this$0:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v1}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/GridPane$4;->this$0:Ljavafx/scene/layout/GridPane;

    invoke-static {v2}, Ljavafx/scene/layout/GridPane;->access$300(Ljavafx/scene/layout/GridPane;)Ljavafx/scene/Group;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 859
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/GridPane$4;->this$0:Ljavafx/scene/layout/GridPane;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/GridPane;->access$302(Ljavafx/scene/layout/GridPane;Ljavafx/scene/Group;)Ljavafx/scene/Group;

    move-result-object v1

    goto :goto_0
.end method
