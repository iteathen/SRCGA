.class Ljavafx/scene/chart/Axis$7;
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
        "Ljavafx/scene/text/Font;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Axis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Axis;Ljavafx/scene/text/Font;)V
    .locals 5

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$7;, "Ljavafx/scene/chart/Axis$7;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/text/Font;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/Axis$7;->this$0:Ljavafx/scene/chart/Axis;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$7;, "Ljavafx/scene/chart/Axis$7;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$7;->this$0:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$7;, "Ljavafx/scene/chart/Axis$7;"
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
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$7;, "Ljavafx/scene/chart/Axis$7;"
    # getter for: Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_FONT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/Axis$StyleableProperties;->access$1200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$7;, "Ljavafx/scene/chart/Axis$7;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$7;, "Ljavafx/scene/chart/Axis$7;"
    const-string v1, "tickLabelFont"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$7;, "Ljavafx/scene/chart/Axis$7;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$7;, "Ljavafx/scene/chart/Axis$7;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/chart/Axis$7;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/text/Font;

    move-object v1, v4

    .line 287
    .local v1, "f":Ljavafx/scene/text/Font;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/Axis$7;->this$0:Ljavafx/scene/chart/Axis;

    iget-object v4, v4, Ljavafx/scene/chart/Axis;->measure:Ljavafx/scene/text/Text;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setFont(Ljavafx/scene/text/Font;)V

    .line 288
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/Axis$7;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v4}, Ljavafx/scene/chart/Axis;->getTickMarks()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/chart/Axis$TickMark;

    move-object v3, v4

    .line 289
    .local v3, "tm":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v4, v3

    iget-object v4, v4, Ljavafx/scene/chart/Axis$TickMark;->textNode:Ljavafx/scene/text/Text;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setFont(Ljavafx/scene/text/Font;)V

    .line 290
    goto :goto_0

    .line 291
    .end local v3    # "tm":Ljavafx/scene/chart/Axis$TickMark;, "Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/Axis$7;->this$0:Ljavafx/scene/chart/Axis;

    const/4 v5, 0x1

    iput-boolean v5, v4, Ljavafx/scene/chart/Axis;->measureInvalid:Z

    .line 292
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/Axis$7;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v4}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 293
    return-void
.end method
