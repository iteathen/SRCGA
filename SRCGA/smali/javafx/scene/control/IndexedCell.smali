.class public Ljavafx/scene/control/IndexedCell;
.super Ljavafx/scene/control/Cell;
.source "IndexedCell.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/Cell",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "indexed-cell"

.field private static final PSEUDO_CLASS_EVEN:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_ODD:Ljavafx/css/PseudoClass;


# instance fields
.field private index:Ljavafx/beans/property/ReadOnlyIntegerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const-string v0, "odd"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/IndexedCell;->PSEUDO_CLASS_ODD:Ljavafx/css/PseudoClass;

    .line 138
    const-string v0, "even"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/IndexedCell;->PSEUDO_CLASS_EVEN:Ljavafx/css/PseudoClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexedCell;, "Ljavafx/scene/control/IndexedCell<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Cell;-><init>()V

    .line 76
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/IndexedCell$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "index"

    const/4 v7, -0x1

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/IndexedCell$1;-><init>(Ljavafx/scene/control/IndexedCell;Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v2, v1, Ljavafx/scene/control/IndexedCell;->index:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 64
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/IndexedCell;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    const-string v5, "indexed-cell"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 65
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Ljavafx/scene/control/IndexedCell;->PSEUDO_CLASS_EVEN:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Ljavafx/scene/control/IndexedCell;->PSEUDO_CLASS_ODD:Ljavafx/css/PseudoClass;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexedCell;, "Ljavafx/scene/control/IndexedCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/IndexedCell;->index:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/IndexedCell;, "Ljavafx/scene/control/IndexedCell<TT;>;"
    return v0
.end method

.method indexChanged(II)V
    .locals 0
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 127
    .local p0, "this":Ljavafx/scene/control/IndexedCell;, "Ljavafx/scene/control/IndexedCell<TT;>;"
    return-void
.end method

.method public final indexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexedCell;, "Ljavafx/scene/control/IndexedCell<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/IndexedCell;->index:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/IndexedCell;, "Ljavafx/scene/control/IndexedCell<TT;>;"
    return-object v0
.end method

.method public updateIndex(I)V
    .locals 6

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/IndexedCell;, "Ljavafx/scene/control/IndexedCell<TT;>;"
    move v1, p1

    .local v1, "i":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/IndexedCell;->index:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v3

    move v2, v3

    .line 115
    .local v2, "oldIndex":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/IndexedCell;->index:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    .line 116
    move-object v3, v0

    move v4, v2

    move v5, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/IndexedCell;->indexChanged(II)V

    .line 117
    return-void
.end method
