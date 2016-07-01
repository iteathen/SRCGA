.class Ljavafx/scene/chart/Axis$9;
.super Ljavafx/css/StyleableDoubleProperty;
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
.method constructor <init>(Ljavafx/scene/chart/Axis;D)V
    .locals 8

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$9;, "Ljavafx/scene/chart/Axis$9;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Axis;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/Axis$9;->this$0:Ljavafx/scene/chart/Axis;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$9;, "Ljavafx/scene/chart/Axis$9;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$9;->this$0:Ljavafx/scene/chart/Axis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$9;, "Ljavafx/scene/chart/Axis$9;"
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
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$9;, "Ljavafx/scene/chart/Axis$9;"
    # getter for: Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_TICK_GAP:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/Axis$StyleableProperties;->access$1400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$9;, "Ljavafx/scene/chart/Axis$9;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$9;, "Ljavafx/scene/chart/Axis$9;"
    const-string v1, "tickLabelGap"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Axis$9;, "Ljavafx/scene/chart/Axis$9;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$9;, "Ljavafx/scene/chart/Axis$9;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Axis$9;->this$0:Ljavafx/scene/chart/Axis;

    invoke-virtual {v1}, Ljavafx/scene/chart/Axis;->requestAxisLayout()V

    .line 345
    return-void
.end method
