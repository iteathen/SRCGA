.class Ljavafx/scene/control/ListView$2;
.super Ljavafx/css/StyleableDoubleProperty;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ListView;->fixedCellSizeProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ListView;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ListView;D)V
    .locals 8

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$2;, "Ljavafx/scene/control/ListView$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ListView;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/ListView$2;->this$0:Ljavafx/scene/control/ListView;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$2;, "Ljavafx/scene/control/ListView$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ListView$2;->this$0:Ljavafx/scene/control/ListView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$2;, "Ljavafx/scene/control/ListView$2;"
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ListView",
            "<*>;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$2;, "Ljavafx/scene/control/ListView$2;"
    # getter for: Ljavafx/scene/control/ListView$StyleableProperties;->FIXED_CELL_SIZE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/ListView$StyleableProperties;->access$300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$2;, "Ljavafx/scene/control/ListView$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$2;, "Ljavafx/scene/control/ListView$2;"
    const-string v1, "fixedCellSize"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ListView$2;, "Ljavafx/scene/control/ListView$2;"
    return-object v0
.end method
