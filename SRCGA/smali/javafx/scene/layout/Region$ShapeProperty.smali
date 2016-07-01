.class final Ljavafx/scene/layout/Region$ShapeProperty;
.super Ljavafx/css/StyleableObjectProperty;
.source "Region.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShapeProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/shape/Shape;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/Region;


# direct methods
.method private constructor <init>(Ljavafx/scene/layout/Region;)V
    .locals 4

    .prologue
    .line 1224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$ShapeProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/Region$ShapeProperty;->this$0:Ljavafx/scene/layout/Region;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableObjectProperty;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/layout/Region;Ljavafx/scene/layout/Region$1;)V
    .locals 5

    .prologue
    .line 1224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$ShapeProperty;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/layout/Region;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/layout/Region$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/layout/Region$ShapeProperty;-><init>(Ljavafx/scene/layout/Region;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$ShapeProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$ShapeProperty;->this$0:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$ShapeProperty;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$ShapeProperty;
    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->SHAPE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$2700()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$ShapeProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$ShapeProperty;
    const-string v1, "shape"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$ShapeProperty;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 1231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$ShapeProperty;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region$ShapeProperty;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/shape/Shape;

    move-object v1, v2

    .line 1232
    .local v1, "value":Ljavafx/scene/shape/Shape;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region$ShapeProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v2}, Ljavafx/scene/layout/Region;->access$1600(Ljavafx/scene/layout/Region;)Ljavafx/scene/shape/Shape;

    move-result-object v2

    move-object v3, v1

    if-eq v2, v3, :cond_4

    .line 1234
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region$ShapeProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v2}, Ljavafx/scene/layout/Region;->access$1600(Ljavafx/scene/layout/Region;)Ljavafx/scene/shape/Shape;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region$ShapeProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v2}, Ljavafx/scene/layout/Region;->access$1600(Ljavafx/scene/layout/Region;)Ljavafx/scene/shape/Shape;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape;->impl_setShapeChangeListener(Ljava/lang/Runnable;)V

    .line 1235
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape;->impl_setShapeChangeListener(Ljava/lang/Runnable;)V

    .line 1237
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region$ShapeProperty;->run()V

    .line 1238
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region$ShapeProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v2}, Ljavafx/scene/layout/Region;->access$1600(Ljavafx/scene/layout/Region;)Ljavafx/scene/shape/Shape;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v2, v1

    if-nez v2, :cond_3

    .line 1242
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region$ShapeProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v2}, Ljavafx/scene/layout/Region;->access$500(Ljavafx/scene/layout/Region;)Ljavafx/scene/layout/Region$InsetsProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/layout/Region$InsetsProperty;->fireValueChanged()V

    .line 1245
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region$ShapeProperty;->this$0:Ljavafx/scene/layout/Region;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/layout/Region;->access$1602(Ljavafx/scene/layout/Region;Ljavafx/scene/shape/Shape;)Ljavafx/scene/shape/Shape;

    move-result-object v2

    .line 1247
    :cond_4
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$ShapeProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$ShapeProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v1}, Ljavafx/scene/layout/Region;->access$2800(Ljavafx/scene/layout/Region;)V

    .line 1251
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$ShapeProperty;->this$0:Ljavafx/scene/layout/Region;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->REGION_SHAPE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/layout/Region;->access$2900(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 1252
    return-void
.end method
