.class Ljavafx/scene/chart/ValueAxis$7;
.super Ljavafx/css/StyleableIntegerProperty;
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
.method constructor <init>(Ljavafx/scene/chart/ValueAxis;I)V
    .locals 5

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$7;, "Ljavafx/scene/chart/ValueAxis$7;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/ValueAxis;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/ValueAxis$7;->this$0:Ljavafx/scene/chart/ValueAxis;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableIntegerProperty;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$7;, "Ljavafx/scene/chart/ValueAxis$7;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$7;->this$0:Ljavafx/scene/chart/ValueAxis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$7;, "Ljavafx/scene/chart/ValueAxis$7;"
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
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$7;, "Ljavafx/scene/chart/ValueAxis$7;"
    # getter for: Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_COUNT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$7;, "Ljavafx/scene/chart/ValueAxis$7;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$7;, "Ljavafx/scene/chart/ValueAxis$7;"
    const-string v1, "minorTickCount"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$7;, "Ljavafx/scene/chart/ValueAxis$7;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$7;, "Ljavafx/scene/chart/ValueAxis$7;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$7;->this$0:Ljavafx/scene/chart/ValueAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/ValueAxis;->invalidateRange()V

    .line 221
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$7;->this$0:Ljavafx/scene/chart/ValueAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/ValueAxis;->requestAxisLayout()V

    .line 222
    return-void
.end method
