.class Ljavafx/scene/chart/Axis$4;
.super Ljavafx/css/StyleableBooleanProperty;
.source "Axis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Axis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Axis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Axis;Z)V
    .locals 5

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$4;, "Ljavafx/scene/chart/Axis$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/Axis$4;->this$0:Ljavafx/scene/chart/Axis;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$4;, "Ljavafx/scene/chart/Axis$4;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$4;->this$0:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$4;, "Ljavafx/scene/chart/Axis$4;"
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/Axis",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$4;, "Ljavafx/scene/chart/Axis$4;"
    # getter for: Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABELS_VISIBLE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/Axis$StyleableProperties;->access$900()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$4;, "Ljavafx/scene/chart/Axis$4;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$4;, "Ljavafx/scene/chart/Axis$4;"
    const-string v1, "tickLabelsVisible"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$4;, "Ljavafx/scene/chart/Axis$4;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$4;, "Ljavafx/scene/chart/Axis$4;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Axis$4;->this$0:Ljavafx/scene/chart/Axis;

    invoke-static {v3}, Ljavafx/scene/chart/Axis;->access$800(Ljavafx/scene/chart/Axis;)Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/chart/Axis$TickMark;

    move-object v2, v3

    .line 205
    .local v2, "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/Axis$4;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/Axis$TickMark;->setTextVisible(Z)V

    .line 206
    goto :goto_0

    .line 207
    .end local v2    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Axis$4;->this$0:Ljavafx/scene/chart/Axis;

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/chart/Axis;->tickLabelsVisibleInvalid:Z

    .line 208
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Axis$4;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v3}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 209
    return-void
.end method
