.class Ljavafx/scene/layout/Region$5;
.super Ljavafx/css/StyleableObjectProperty;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/layout/Region;->opaqueInsetsProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/geometry/Insets;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/layout/Region;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/Region;)V
    .locals 4

    .prologue
    .line 715
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$5;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/Region;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/Region$5;->this$0:Ljavafx/scene/layout/Region;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableObjectProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 716
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$5;->this$0:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$5;
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
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$5;
    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->OPAQUE_INSETS:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$1300()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$5;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$5;
    const-string v1, "opaqueInsets"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$5;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 726
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$5;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$5;->this$0:Ljavafx/scene/layout/Region;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILL:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/layout/Region;->access$1400(Ljavafx/scene/layout/Region;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 727
    return-void
.end method
