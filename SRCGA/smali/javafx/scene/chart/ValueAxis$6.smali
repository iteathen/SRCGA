.class Ljavafx/scene/chart/ValueAxis$6;
.super Ljavafx/css/StyleableDoubleProperty;
.source "ValueAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/ValueAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/ValueAxis;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/ValueAxis;D)V
    .locals 8

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$6;, "Ljavafx/scene/chart/ValueAxis$6;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/ValueAxis;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/ValueAxis$6;->this$0:Ljavafx/scene/chart/ValueAxis;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$6;, "Ljavafx/scene/chart/ValueAxis$6;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$6;->this$0:Ljavafx/scene/chart/ValueAxis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$6;, "Ljavafx/scene/chart/ValueAxis$6;"
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/ValueAxis",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$6;, "Ljavafx/scene/chart/ValueAxis$6;"
    # getter for: Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_LENGTH:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->access$200()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$6;, "Ljavafx/scene/chart/ValueAxis$6;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$6;, "Ljavafx/scene/chart/ValueAxis$6;"
    const-string v1, "minorTickLength"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$6;, "Ljavafx/scene/chart/ValueAxis$6;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$6;, "Ljavafx/scene/chart/ValueAxis$6;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$6;->this$0:Ljavafx/scene/chart/ValueAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/ValueAxis;->requestAxisLayout()V

    .line 193
    return-void
.end method
