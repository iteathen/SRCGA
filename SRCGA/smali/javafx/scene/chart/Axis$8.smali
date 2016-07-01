.class Ljavafx/scene/chart/Axis$8;
.super Ljavafx/css/StyleableObjectProperty;
.source "Axis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Axis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/paint/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Axis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/paint/Paint;)V
    .locals 5

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$8;, "Ljavafx/scene/chart/Axis$8;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/paint/Paint;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/Axis$8;->this$0:Ljavafx/scene/chart/Axis;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$8;, "Ljavafx/scene/chart/Axis$8;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$8;->this$0:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$8;, "Ljavafx/scene/chart/Axis$8;"
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
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$8;, "Ljavafx/scene/chart/Axis$8;"
    # getter for: Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_FILL:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/Axis$StyleableProperties;->access$1300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$8;, "Ljavafx/scene/chart/Axis$8;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$8;, "Ljavafx/scene/chart/Axis$8;"
    const-string v1, "tickLabelFill"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$8;, "Ljavafx/scene/chart/Axis$8;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$8;, "Ljavafx/scene/chart/Axis$8;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/Axis$8;->this$0:Ljavafx/scene/chart/Axis;

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

    .line 318
    .local v2, "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v3, v2

    iget-object v3, v3, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/Axis$8;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v4}, Ljavafx/scene/chart/Axis;->getTickLabelFill()Ljavafx/scene/paint/Paint;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/text/Text;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 319
    goto :goto_0

    .line 320
    .end local v2    # "tick":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_0
    return-void
.end method
