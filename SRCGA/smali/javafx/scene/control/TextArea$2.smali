.class Ljavafx/scene/control/TextArea$2;
.super Ljavafx/css/StyleableIntegerProperty;
.source "TextArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TextArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldValue:I

.field final synthetic this$0:Ljavafx/scene/control/TextArea;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TextArea;I)V
    .locals 5

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TextArea;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TextArea$2;->this$0:Ljavafx/scene/control/TextArea;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableIntegerProperty;-><init>(I)V

    .line 508
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TextArea$2;->get()I

    move-result v4

    iput v4, v3, Ljavafx/scene/control/TextArea$2;->oldValue:I

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextArea$2;->this$0:Ljavafx/scene/control/TextArea;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea$2;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/TextArea;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$2;
    # getter for: Ljavafx/scene/control/TextArea$StyleableProperties;->PREF_COLUMN_COUNT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/TextArea$StyleableProperties;->access$700()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$2;
    const-string v1, "prefColumnCount"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextArea$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextArea$2;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextArea$2;->get()I

    move-result v2

    move v1, v2

    .line 513
    .local v1, "value":I
    move v2, v1

    if-gez v2, :cond_1

    .line 514
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextArea$2;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TextArea$2;->unbind()V

    .line 517
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/TextArea$2;->oldValue:I

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextArea$2;->set(I)V

    .line 518
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "value cannot be negative."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 520
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/control/TextArea$2;->oldValue:I

    .line 521
    return-void
.end method
