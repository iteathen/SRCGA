.class Ljavafx/scene/chart/ValueAxis$1;
.super Ljavafx/css/StyleableBooleanProperty;
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
.method constructor <init>(Ljavafx/scene/chart/ValueAxis;Z)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$1;, "Ljavafx/scene/chart/ValueAxis$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/ValueAxis;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/ValueAxis$1;->this$0:Ljavafx/scene/chart/ValueAxis;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$1;, "Ljavafx/scene/chart/ValueAxis$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$1;->this$0:Ljavafx/scene/chart/ValueAxis;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$1;, "Ljavafx/scene/chart/ValueAxis$1;"
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$1;, "Ljavafx/scene/chart/ValueAxis$1;"
    # getter for: Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_VISIBLE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->access$100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$1;, "Ljavafx/scene/chart/ValueAxis$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$1;, "Ljavafx/scene/chart/ValueAxis$1;"
    const-string v1, "minorTickVisible"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxis$1;, "Ljavafx/scene/chart/ValueAxis$1;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$1;, "Ljavafx/scene/chart/ValueAxis$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$1;->this$0:Ljavafx/scene/chart/ValueAxis;

    invoke-static {v1}, Ljavafx/scene/chart/ValueAxis;->access$000(Ljavafx/scene/chart/ValueAxis;)Ljavafx/scene/shape/Path;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/chart/ValueAxis$1;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/Path;->setVisible(Z)V

    .line 86
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/ValueAxis$1;->this$0:Ljavafx/scene/chart/ValueAxis;

    invoke-virtual {v1}, Ljavafx/scene/chart/ValueAxis;->requestAxisLayout()V

    .line 87
    return-void
.end method
