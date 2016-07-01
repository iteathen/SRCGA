.class Ljavafx/scene/chart/Axis$3;
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
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$3;, "Ljavafx/scene/chart/Axis$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/Axis$3;->this$0:Ljavafx/scene/chart/Axis;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$3;, "Ljavafx/scene/chart/Axis$3;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$3;->this$0:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$3;, "Ljavafx/scene/chart/Axis$3;"
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
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$3;, "Ljavafx/scene/chart/Axis$3;"
    # getter for: Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_MARK_VISIBLE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/Axis$StyleableProperties;->access$700()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$3;, "Ljavafx/scene/chart/Axis$3;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$3;, "Ljavafx/scene/chart/Axis$3;"
    const-string v1, "tickMarkVisible"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$3;, "Ljavafx/scene/chart/Axis$3;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$3;, "Ljavafx/scene/chart/Axis$3;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$3;->this$0:Ljavafx/scene/chart/Axis;

    invoke-static {v1}, Ljavafx/scene/chart/Axis;->access$600(Ljavafx/scene/chart/Axis;)Ljavafx/scene/shape/Path;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/Axis$3;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/Path;->setVisible(Z)V

    .line 179
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$3;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 180
    return-void
.end method
