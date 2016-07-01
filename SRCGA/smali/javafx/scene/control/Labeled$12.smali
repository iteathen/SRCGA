.class Ljavafx/scene/control/Labeled$12;
.super Ljavafx/css/StyleableObjectProperty;
.source "Labeled.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Labeled;->labelPaddingPropertyImpl()Ljavafx/beans/property/ObjectProperty;
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

.field final synthetic this$0:Ljavafx/scene/control/Labeled;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Labeled;Ljavafx/geometry/Insets;)V
    .locals 5

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$12;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Labeled;
    move-object v2, p2

    .local v2, "x0":Ljavafx/geometry/Insets;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Labeled$12;->this$0:Ljavafx/scene/control/Labeled;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    .line 652
    move-object v3, v0

    sget-object v4, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    iput-object v4, v3, Ljavafx/scene/control/Labeled$12;->lastValidValue:Ljavafx/geometry/Insets;

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$12;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled$12;->this$0:Ljavafx/scene/control/Labeled;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$12;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Labeled;",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$12;
    # getter for: Ljavafx/scene/control/Labeled$StyleableProperties;->LABEL_PADDING:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Labeled$StyleableProperties;->access$1100()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$12;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$12;
    const-string v1, "labelPadding"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$12;
    return-object v0
.end method

.method public invalidated()V
    .locals 6

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$12;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled$12;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/geometry/Insets;

    move-object v1, v2

    .line 657
    .local v1, "newValue":Ljavafx/geometry/Insets;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 658
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Labeled$12;->lastValidValue:Ljavafx/geometry/Insets;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Labeled$12;->set(Ljava/lang/Object;)V

    .line 659
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "cannot set labelPadding to null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 661
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/Labeled$12;->lastValidValue:Ljavafx/geometry/Insets;

    .line 662
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Labeled$12;->this$0:Ljavafx/scene/control/Labeled;

    invoke-virtual {v2}, Ljavafx/scene/control/Labeled;->requestLayout()V

    .line 663
    return-void
.end method
