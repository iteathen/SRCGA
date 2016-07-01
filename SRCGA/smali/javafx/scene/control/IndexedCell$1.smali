.class Ljavafx/scene/control/IndexedCell$1;
.super Ljavafx/beans/property/ReadOnlyIntegerWrapper;
.source "IndexedCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/IndexedCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/IndexedCell;


# direct methods
.method constructor <init>(Ljavafx/scene/control/IndexedCell;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 9

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexedCell$1;, "Ljavafx/scene/control/IndexedCell$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/IndexedCell;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move v4, p4

    .local v4, "x2":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/IndexedCell$1;->this$0:Ljavafx/scene/control/IndexedCell;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexedCell$1;, "Ljavafx/scene/control/IndexedCell$1;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/IndexedCell$1;->get()I

    move-result v2

    const/4 v3, 0x2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .line 79
    .local v1, "active":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/IndexedCell$1;->this$0:Ljavafx/scene/control/IndexedCell;

    # getter for: Ljavafx/scene/control/IndexedCell;->PSEUDO_CLASS_EVEN:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/IndexedCell;->access$000()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/IndexedCell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 80
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/IndexedCell$1;->this$0:Ljavafx/scene/control/IndexedCell;

    # getter for: Ljavafx/scene/control/IndexedCell;->PSEUDO_CLASS_ODD:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/IndexedCell;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v3

    move v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/IndexedCell;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 81
    return-void

    .line 78
    .end local v1    # "active":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 80
    .restart local v1    # "active":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
