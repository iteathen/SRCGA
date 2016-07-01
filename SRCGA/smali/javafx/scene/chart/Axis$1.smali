.class Ljavafx/scene/chart/Axis$1;
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
        "Ljavafx/geometry/Side;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Axis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Axis;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$1;, "Ljavafx/scene/chart/Axis$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/Axis$1;->this$0:Ljavafx/scene/chart/Axis;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableObjectProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$1;, "Ljavafx/scene/chart/Axis$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$1;->this$0:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$1;, "Ljavafx/scene/chart/Axis$1;"
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
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$1;, "Ljavafx/scene/chart/Axis$1;"
    # getter for: Ljavafx/scene/chart/Axis$StyleableProperties;->SIDE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/Axis$StyleableProperties;->access$400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$1;, "Ljavafx/scene/chart/Axis$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$1;, "Ljavafx/scene/chart/Axis$1;"
    const-string v1, "side"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$1;, "Ljavafx/scene/chart/Axis$1;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$1;, "Ljavafx/scene/chart/Axis$1;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/geometry/Side;

    move-object v1, v2

    .line 114
    .local v1, "edge":Ljavafx/geometry/Side;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis$1;->this$0:Ljavafx/scene/chart/Axis;

    # getter for: Ljavafx/scene/chart/Axis;->TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/chart/Axis;->access$000()Ljavafx/css/PseudoClass;

    move-result-object v3

    move-object v4, v1

    sget-object v5, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/chart/Axis;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 115
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis$1;->this$0:Ljavafx/scene/chart/Axis;

    # getter for: Ljavafx/scene/chart/Axis;->RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/chart/Axis;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v3

    move-object v4, v1

    sget-object v5, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/chart/Axis;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 116
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis$1;->this$0:Ljavafx/scene/chart/Axis;

    # getter for: Ljavafx/scene/chart/Axis;->BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/chart/Axis;->access$200()Ljavafx/css/PseudoClass;

    move-result-object v3

    move-object v4, v1

    sget-object v5, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/chart/Axis;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 117
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis$1;->this$0:Ljavafx/scene/chart/Axis;

    # getter for: Ljavafx/scene/chart/Axis;->LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/chart/Axis;->access$300()Ljavafx/css/PseudoClass;

    move-result-object v3

    move-object v4, v1

    sget-object v5, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/chart/Axis;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 118
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/Axis$1;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 119
    return-void

    .line 114
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 115
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 116
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 117
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method
