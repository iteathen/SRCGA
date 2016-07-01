.class Ljavafx/scene/layout/Region$9;
.super Ljavafx/css/StyleableBooleanProperty;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/Region;->centerShapeProperty()Ljavafx/beans/property/BooleanProperty;
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
    .line 1299
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$9;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/Region;
    move v2, p2

    .local v2, "initialValue":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/Region$9;->this$0:Ljavafx/scene/layout/Region;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableBooleanProperty;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$9;->this$0:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$9;
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
    .line 1303
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$9;
    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->POSITION_SHAPE:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$3300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$9;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$9;
    const-string v1, "centerShape"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$9;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 1306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$9;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v1}, Ljavafx/scene/layout/Region;->access$3400(Ljavafx/scene/layout/Region;)V

    .line 1307
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$9;->this$0:Ljavafx/scene/layout/Region;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->REGION_SHAPE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/layout/Region;->access$3500(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 1308
    return-void
.end method
