.class Ljavafx/scene/layout/Region$2;
.super Ljavafx/css/StyleableObjectProperty;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/Region;
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
.field private lastValidValue:Ljavafx/geometry/Insets;

.field final synthetic this$0:Ljavafx/scene/layout/Region;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/Region;Ljavafx/geometry/Insets;)V
    .locals 5

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/layout/Region;
    move-object v2, p2

    .local v2, "initialValue":Ljavafx/geometry/Insets;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/layout/Region$2;->this$0:Ljavafx/scene/layout/Region;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    .line 537
    move-object v3, v0

    sget-object v4, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    iput-object v4, v3, Ljavafx/scene/layout/Region$2;->lastValidValue:Ljavafx/geometry/Insets;

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$2;->this$0:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$2;
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
    .line 542
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$2;
    # getter for: Ljavafx/scene/layout/Region$StyleableProperties;->PADDING:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/layout/Region$StyleableProperties;->access$400()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$2;
    const-string v1, "padding"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 6

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$2;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/geometry/Insets;

    move-object v1, v2

    .line 546
    .local v1, "newValue":Ljavafx/geometry/Insets;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 548
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region$2;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Region$2;->unbind()V

    .line 551
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region$2;->lastValidValue:Ljavafx/geometry/Insets;

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/Region$2;->set(Ljava/lang/Object;)V

    .line 552
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "cannot set padding to null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 553
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Region$2;->lastValidValue:Ljavafx/geometry/Insets;

    invoke-virtual {v2, v3}, Ljavafx/geometry/Insets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 554
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/Region$2;->lastValidValue:Ljavafx/geometry/Insets;

    .line 555
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/Region$2;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v2}, Ljavafx/scene/layout/Region;->access$500(Ljavafx/scene/layout/Region;)Ljavafx/scene/layout/Region$InsetsProperty;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/layout/Region$InsetsProperty;->fireValueChanged()V

    .line 557
    :cond_2
    return-void
.end method
