.class Ljavafx/scene/layout/Region$8;
.super Ljavafx/css/StyleableBooleanProperty;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/Region;->scaleShapeProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/Region;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/Region;Z)V
    .locals 5

    .prologue
    .line 1270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$8;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/Region;
    move v2, p2

    .local v2, "initialValue":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/Region$8;->this$0:Ljavafx/scene/layout/Region;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1271
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$8;->this$0:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$8;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$8;
    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->SCALE_SHAPE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$3000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$8;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$8;
    const-string v1, "scaleShape"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$8;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 1277
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$8;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$8;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v1}, Ljavafx/scene/layout/Region;->access$3100(Ljavafx/scene/layout/Region;)V

    .line 1278
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$8;->this$0:Ljavafx/scene/layout/Region;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->REGION_SHAPE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/layout/Region;->access$3200(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 1279
    return-void
.end method
