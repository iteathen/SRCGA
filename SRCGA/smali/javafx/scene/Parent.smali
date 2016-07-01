.class public abstract Ljavafx/scene/Parent;
.super Ljavafx/scene/Node;
.source "Parent.java"


# static fields
.field static final DIRTY_CHILDREN_THRESHOLD:I = 0xa

.field private static final REMOVED_CHILDREN_THRESHOLD:I = 0x14

.field private static final warnOnAutoMove:Z


# instance fields
.field private final BOTTOM_INVALID:I

.field private final FAR_INVALID:I

.field private final LEFT_INVALID:I

.field private final NEAR_INVALID:I

.field private final RIGHT_INVALID:I

.field private final TOP_INVALID:I

.field private bottom:Ljavafx/scene/Node;

.field private cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

.field private cachedBoundsInvalid:Z

.field private final childSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private childSetModified:Z

.field private final children:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private childrenTriggerPermutation:Z

.field private currentlyProcessedChild:Ljavafx/scene/Node;

.field private dirtyChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private dirtyChildrenCount:I

.field private far:Ljavafx/scene/Node;

.field private geomChanged:Z

.field private impl_traversalEngine:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;",
            ">;"
        }
    .end annotation
.end field

.field layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

.field layoutRoot:Z

.field private left:Ljavafx/scene/Node;

.field private minHeightCache:D

.field private minWidthCache:D

.field private near:Ljavafx/scene/Node;

.field private needsLayout:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field performingLayout:Z

.field private pgChildrenSize:I

.field private prefHeightCache:D

.field private prefWidthCache:D

.field private removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private removedChildrenOptimizationDisabled:Z

.field private right:Ljavafx/scene/Node;

.field private sceneRoot:Z

.field private sizeCacheClear:Z

.field private startIdx:I

.field private final stylesheets:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tmp:Lcom/sun/javafx/geom/BaseBounds;

.field private top:Ljavafx/scene/Node;

.field private final unmodifiableChildren:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private unmodifiableManagedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "javafx.sg.warn"

    invoke-static {v0}, Ljavafx/scene/PropertyHelper;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ljavafx/scene/Parent;->warnOnAutoMove:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    .prologue
    .line 1287
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;-><init>()V

    .line 98
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Parent;->removedChildrenOptimizationDisabled:Z

    .line 156
    move-object v1, v0

    new-instance v2, Ljava/util/HashSet;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Ljavafx/scene/Parent;->childSet:Ljava/util/Set;

    .line 159
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/Parent;->startIdx:I

    .line 162
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/Parent;->pgChildrenSize:I

    .line 202
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Parent;->childrenTriggerPermutation:Z

    .line 227
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Parent$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    new-instance v5, Ljavafx/scene/Parent$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/Parent$1;-><init>(Ljavafx/scene/Parent;)V

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Parent$2;-><init>(Ljavafx/scene/Parent;Ljavafx/collections/ObservableList;)V

    iput-object v2, v1, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    .line 526
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    .line 527
    invoke-static {v2}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Parent;->unmodifiableChildren:Ljavafx/collections/ObservableList;

    .line 536
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/Parent;->unmodifiableManagedChildren:Ljava/util/List;

    .line 790
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/LayoutFlags;->CLEAN:Lcom/sun/javafx/scene/LayoutFlags;

    iput-object v2, v1, Ljavafx/scene/Parent;->layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

    .line 828
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Parent;->performingLayout:Z

    .line 830
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Parent;->sizeCacheClear:Z

    .line 831
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/Parent;->prefWidthCache:D

    .line 832
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/Parent;->prefHeightCache:D

    .line 833
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/Parent;->minWidthCache:D

    .line 834
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/Parent;->minHeightCache:D

    .line 1117
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Parent;->sceneRoot:Z

    .line 1124
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Parent;->layoutRoot:Z

    .line 1146
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Parent$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Parent$3;-><init>(Ljavafx/scene/Parent;)V

    iput-object v2, v1, Ljavafx/scene/Parent;->stylesheets:Ljavafx/collections/ObservableList;

    .line 1324
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    .line 1330
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 1535
    move-object v1, v0

    const/4 v2, 0x1

    iput v2, v1, Ljavafx/scene/Parent;->LEFT_INVALID:I

    .line 1536
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Ljavafx/scene/Parent;->TOP_INVALID:I

    .line 1537
    move-object v1, v0

    const/4 v2, 0x4

    iput v2, v1, Ljavafx/scene/Parent;->NEAR_INVALID:I

    .line 1538
    move-object v1, v0

    const/16 v2, 0x8

    iput v2, v1, Ljavafx/scene/Parent;->RIGHT_INVALID:I

    .line 1539
    move-object v1, v0

    const/16 v2, 0x10

    iput v2, v1, Ljavafx/scene/Parent;->BOTTOM_INVALID:I

    .line 1540
    move-object v1, v0

    const/16 v2, 0x20

    iput v2, v1, Ljavafx/scene/Parent;->FAR_INVALID:I

    .line 1288
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/LayoutFlags;->NEEDS_LAYOUT:Lcom/sun/javafx/scene/LayoutFlags;

    iput-object v2, v1, Ljavafx/scene/Parent;->layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

    .line 1289
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->PARENT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/Parent;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 1290
    return-void
.end method

.method static synthetic access$002(Ljavafx/scene/Parent;Ljava/util/List;)Ljava/util/List;
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "x1":Ljava/util/List;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Parent;->unmodifiableManagedChildren:Ljava/util/List;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/Parent;)Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Parent;->childSetModified:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return v0
.end method

.method static synthetic access$1000(Ljavafx/scene/Parent;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->childSet:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return-object v0
.end method

.method static synthetic access$102(Ljavafx/scene/Parent;Z)Z
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/Parent;->childSetModified:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return v0
.end method

.method static synthetic access$1100(Ljavafx/scene/Parent;)Ljava/util/List;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->removed:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return-object v0
.end method

.method static synthetic access$1102(Ljavafx/scene/Parent;Ljava/util/List;)Ljava/util/List;
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "x1":Ljava/util/List;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Parent;->removed:Ljava/util/List;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/Parent;)Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Parent;->removedChildrenOptimizationDisabled:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return v0
.end method

.method static synthetic access$1202(Ljavafx/scene/Parent;Z)Z
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/Parent;->removedChildrenOptimizationDisabled:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return v0
.end method

.method static synthetic access$1300(Ljavafx/scene/Parent;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Parent;->childExcluded(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Ljavafx/scene/Parent;->warnOnAutoMove:Z

    return v0
.end method

.method static synthetic access$400(Ljavafx/scene/Parent;)Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Parent;->geomChanged:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return v0
.end method

.method static synthetic access$402(Ljavafx/scene/Parent;Z)Z
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/Parent;->geomChanged:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return v0
.end method

.method static synthetic access$500(Ljavafx/scene/Parent;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Parent;->childIncluded(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/Parent;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->dirtyChildren:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return-object v0
.end method

.method static synthetic access$602(Ljavafx/scene/Parent;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "x1":Ljava/util/ArrayList;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Parent;->dirtyChildren:Ljava/util/ArrayList;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/Parent;)I
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Parent;->dirtyChildrenCount:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return v0
.end method

.method static synthetic access$800(Ljavafx/scene/Parent;)I
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Parent;->startIdx:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return v0
.end method

.method static synthetic access$802(Ljavafx/scene/Parent;I)I
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/scene/Parent;->startIdx:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return v0
.end method

.method static synthetic access$900(Ljavafx/scene/Parent;)Z
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Parent;->childrenTriggerPermutation:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Parent;
    return v0
.end method

.method private childExcluded(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 1473
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->left:Ljavafx/scene/Node;

    if-ne v2, v3, :cond_0

    .line 1474
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Parent;->left:Ljavafx/scene/Node;

    .line 1475
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Parent;->cachedBoundsInvalid:Z

    .line 1477
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->top:Ljavafx/scene/Node;

    if-ne v2, v3, :cond_1

    .line 1478
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Parent;->top:Ljavafx/scene/Node;

    .line 1479
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Parent;->cachedBoundsInvalid:Z

    .line 1481
    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->near:Ljavafx/scene/Node;

    if-ne v2, v3, :cond_2

    .line 1482
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Parent;->near:Ljavafx/scene/Node;

    .line 1483
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Parent;->cachedBoundsInvalid:Z

    .line 1485
    :cond_2
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->right:Ljavafx/scene/Node;

    if-ne v2, v3, :cond_3

    .line 1486
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Parent;->right:Ljavafx/scene/Node;

    .line 1487
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Parent;->cachedBoundsInvalid:Z

    .line 1489
    :cond_3
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->bottom:Ljavafx/scene/Node;

    if-ne v2, v3, :cond_4

    .line 1490
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Parent;->bottom:Ljavafx/scene/Node;

    .line 1491
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Parent;->cachedBoundsInvalid:Z

    .line 1493
    :cond_4
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->far:Ljavafx/scene/Node;

    if-ne v2, v3, :cond_5

    .line 1494
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Parent;->far:Ljavafx/scene/Node;

    .line 1495
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Parent;->cachedBoundsInvalid:Z

    .line 1498
    :cond_5
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/Parent;->setChildDirty(Ljavafx/scene/Node;Z)V

    .line 1499
    return-void
.end method

.method private childIncluded(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 1465
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Parent;->cachedBoundsInvalid:Z

    .line 1466
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljavafx/scene/Parent;->setChildDirty(Ljavafx/scene/Node;Z)V

    .line 1467
    return-void
.end method

.method private createCachedBounds(Ljava/util/List;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1648
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Parent;
    move-object/from16 v3, p1

    .local v3, "fromNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v19, v3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v10, v19

    .line 1652
    .local v10, "nodeCount":I
    const/16 v19, 0x0

    move/from16 v11, v19

    .local v11, "i":I
    :goto_0
    move/from16 v19, v11

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1653
    move-object/from16 v19, v3

    move/from16 v20, v11

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/scene/Node;

    move-object/from16 v12, v19

    .line 1654
    .local v12, "node":Ljavafx/scene/Node;
    move-object/from16 v19, v12

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Ljavafx/scene/Node;->boundsChanged:Z

    .line 1655
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/Node;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1656
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v21, v0

    sget-object v22, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Node;->getTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    .line 1658
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    .line 1659
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    move-object/from16 v25, v12

    move-object/from16 v27, v24

    move-object/from16 v28, v25

    move-object/from16 v24, v28

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Ljavafx/scene/Parent;->far:Ljavafx/scene/Node;

    move-object/from16 v27, v23

    move-object/from16 v28, v24

    move-object/from16 v23, v28

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Ljavafx/scene/Parent;->bottom:Ljavafx/scene/Node;

    move-object/from16 v27, v22

    move-object/from16 v28, v23

    move-object/from16 v22, v28

    move-object/from16 v23, v27

    move-object/from16 v24, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Ljavafx/scene/Parent;->right:Ljavafx/scene/Node;

    move-object/from16 v27, v21

    move-object/from16 v28, v22

    move-object/from16 v21, v28

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Ljavafx/scene/Parent;->near:Ljavafx/scene/Node;

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljavafx/scene/Parent;->top:Ljavafx/scene/Node;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/Parent;->left:Ljavafx/scene/Node;

    .line 1660
    .line 1665
    .end local v12    # "node":Ljavafx/scene/Node;
    :cond_0
    move/from16 v19, v11

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1666
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v22, v2

    move-object/from16 v23, v2

    move-object/from16 v24, v2

    const/16 v25, 0x0

    move-object/from16 v27, v24

    move-object/from16 v28, v25

    move-object/from16 v24, v28

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Ljavafx/scene/Parent;->far:Ljavafx/scene/Node;

    move-object/from16 v27, v23

    move-object/from16 v28, v24

    move-object/from16 v23, v28

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Ljavafx/scene/Parent;->bottom:Ljavafx/scene/Node;

    move-object/from16 v27, v22

    move-object/from16 v28, v23

    move-object/from16 v22, v28

    move-object/from16 v23, v27

    move-object/from16 v24, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Ljavafx/scene/Parent;->right:Ljavafx/scene/Node;

    move-object/from16 v27, v21

    move-object/from16 v28, v22

    move-object/from16 v21, v28

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Ljavafx/scene/Parent;->near:Ljavafx/scene/Node;

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v20, v28

    move-object/from16 v21, v27

    move-object/from16 v22, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Ljavafx/scene/Parent;->top:Ljavafx/scene/Node;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/Parent;->left:Ljavafx/scene/Node;

    .line 1667
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v19

    .line 1668
    .line 1705
    :goto_1
    return-void

    .line 1652
    .restart local v12    # "node":Ljavafx/scene/Node;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1671
    .end local v12    # "node":Ljavafx/scene/Node;
    :cond_2
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v19

    move/from16 v4, v19

    .line 1672
    .local v4, "minX":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v19

    move/from16 v5, v19

    .line 1673
    .local v5, "minY":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v19

    move/from16 v6, v19

    .line 1674
    .local v6, "minZ":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v19

    move/from16 v7, v19

    .line 1675
    .local v7, "maxX":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v19

    move/from16 v8, v19

    .line 1676
    .local v8, "maxY":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v19

    move/from16 v9, v19

    .line 1679
    .local v9, "maxZ":F
    add-int/lit8 v11, v11, 0x1

    :goto_2
    move/from16 v19, v11

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 1680
    move-object/from16 v19, v3

    move/from16 v20, v11

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/scene/Node;

    move-object/from16 v12, v19

    .line 1681
    .restart local v12    # "node":Ljavafx/scene/Node;
    move-object/from16 v19, v12

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Ljavafx/scene/Node;->boundsChanged:Z

    .line 1682
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/Node;->isVisible()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1683
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v21, v0

    sget-object v22, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Node;->getTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    .line 1685
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_8

    .line 1686
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v19

    move/from16 v13, v19

    .line 1687
    .local v13, "tmpx":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v19

    move/from16 v14, v19

    .line 1688
    .local v14, "tmpy":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v19

    move/from16 v15, v19

    .line 1689
    .local v15, "tmpz":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v19

    move/from16 v16, v19

    .line 1690
    .local v16, "tmpx2":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v19

    move/from16 v17, v19

    .line 1691
    .local v17, "tmpy2":F
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v19

    move/from16 v18, v19

    .line 1693
    .local v18, "tmpz2":F
    move/from16 v19, v13

    move/from16 v20, v4

    cmpg-float v19, v19, v20

    if-gez v19, :cond_3

    move/from16 v19, v13

    move/from16 v4, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/Parent;->left:Ljavafx/scene/Node;

    .line 1694
    :cond_3
    move/from16 v19, v14

    move/from16 v20, v5

    cmpg-float v19, v19, v20

    if-gez v19, :cond_4

    move/from16 v19, v14

    move/from16 v5, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/Parent;->top:Ljavafx/scene/Node;

    .line 1695
    :cond_4
    move/from16 v19, v15

    move/from16 v20, v6

    cmpg-float v19, v19, v20

    if-gez v19, :cond_5

    move/from16 v19, v15

    move/from16 v6, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/Parent;->near:Ljavafx/scene/Node;

    .line 1696
    :cond_5
    move/from16 v19, v16

    move/from16 v20, v7

    cmpl-float v19, v19, v20

    if-lez v19, :cond_6

    move/from16 v19, v16

    move/from16 v7, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/Parent;->right:Ljavafx/scene/Node;

    .line 1697
    :cond_6
    move/from16 v19, v17

    move/from16 v20, v8

    cmpl-float v19, v19, v20

    if-lez v19, :cond_7

    move/from16 v19, v17

    move/from16 v8, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/Parent;->bottom:Ljavafx/scene/Node;

    .line 1698
    :cond_7
    move/from16 v19, v18

    move/from16 v20, v9

    cmpl-float v19, v19, v20

    if-lez v19, :cond_8

    move/from16 v19, v18

    move/from16 v9, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/Parent;->far:Ljavafx/scene/Node;

    .line 1679
    .end local v13    # "tmpx":F
    .end local v14    # "tmpy":F
    .end local v15    # "tmpz":F
    .end local v16    # "tmpx2":F
    .end local v17    # "tmpy2":F
    .end local v18    # "tmpz2":F
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 1703
    .end local v12    # "node":Ljavafx/scene/Node;
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    invoke-virtual/range {v20 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 1705
    goto/16 :goto_1
.end method

.method private getChildTransformedBounds(Ljavafx/scene/Node;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 7

    .prologue
    .line 1723
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/Parent;->currentlyProcessedChild:Ljavafx/scene/Node;

    .line 1724
    move-object v4, v1

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/Node;->getTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v3, v4

    .line 1725
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/Parent;->currentlyProcessedChild:Ljavafx/scene/Node;

    .line 1726
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0
.end method

.method private markDirtyLayout(Z)V
    .locals 4

    .prologue
    .line 844
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move v1, p1

    .local v1, "local":Z
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/LayoutFlags;->NEEDS_LAYOUT:Lcom/sun/javafx/scene/LayoutFlags;

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->setLayoutFlag(Lcom/sun/javafx/scene/LayoutFlags;)V

    .line 845
    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/Parent;->layoutRoot:Z

    if-eqz v2, :cond_3

    .line 846
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/Parent;->sceneRoot:Z

    if-eqz v2, :cond_2

    .line 847
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->requestNextPulse()V

    .line 848
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Parent;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 849
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Parent;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljavafx/scene/SubScene;->setDirtyLayout(Ljavafx/scene/Parent;)V

    .line 857
    :cond_1
    :goto_0
    return-void

    .line 852
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Parent;->markDirtyLayoutBranch()V

    goto :goto_0

    .line 855
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Parent;->requestParentLayout()V

    goto :goto_0
.end method

.method private recomputeBounds()V
    .locals 12

    .prologue
    .line 1506
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1507
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    .line 1508
    .line 1533
    :goto_0
    return-void

    .line 1512
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1513
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Node;

    move-object v1, v2

    .line 1514
    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Node;->boundsChanged:Z

    .line 1515
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1516
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/Parent;->getChildTransformedBounds(Ljavafx/scene/Node;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 1517
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v8, v1

    move-object v10, v7

    move-object v11, v8

    move-object v7, v11

    move-object v8, v10

    move-object v9, v11

    iput-object v9, v8, Ljavafx/scene/Parent;->far:Ljavafx/scene/Node;

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    move-object v8, v11

    iput-object v8, v7, Ljavafx/scene/Parent;->near:Ljavafx/scene/Node;

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    move-object v7, v11

    iput-object v7, v6, Ljavafx/scene/Parent;->right:Ljavafx/scene/Node;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    iput-object v6, v5, Ljavafx/scene/Parent;->bottom:Ljavafx/scene/Node;

    move-object v10, v3

    move-object v11, v4

    move-object v3, v11

    move-object v4, v10

    move-object v5, v11

    iput-object v5, v4, Ljavafx/scene/Parent;->left:Ljavafx/scene/Node;

    iput-object v3, v2, Ljavafx/scene/Parent;->top:Ljavafx/scene/Node;

    .line 1523
    :goto_1
    goto :goto_0

    .line 1519
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    goto :goto_1

    .line 1526
    .end local v1    # "node":Ljavafx/scene/Node;
    :cond_2
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/Parent;->dirtyChildrenCount:I

    if-eqz v2, :cond_3

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->dirtyChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->dirtyChildren:Ljava/util/ArrayList;

    :goto_2
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/Parent;->dirtyChildrenCount:I

    .line 1527
    invoke-direct {v2, v3, v4}, Ljavafx/scene/Parent;->updateCachedBounds(Ljava/util/List;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1531
    :cond_3
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-direct {v2, v3}, Ljavafx/scene/Parent;->createCachedBounds(Ljava/util/List;)V

    .line 1533
    :cond_4
    goto/16 :goto_0

    .line 1526
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    goto :goto_2
.end method

.method private setChildDirty(Ljavafx/scene/Node;Z)V
    .locals 7

    .prologue
    .line 1445
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move v2, p2

    .local v2, "dirty":Z
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/Node;->boundsChanged:Z

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 1446
    .line 1461
    :goto_0
    return-void

    .line 1449
    :cond_0
    move-object v3, v1

    move v4, v2

    iput-boolean v4, v3, Ljavafx/scene/Node;->boundsChanged:Z

    .line 1450
    move v3, v2

    if-eqz v3, :cond_2

    .line 1451
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->dirtyChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1452
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->dirtyChildren:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1454
    :cond_1
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/Parent;->dirtyChildrenCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/Parent;->dirtyChildrenCount:I

    .line 1461
    :goto_1
    goto :goto_0

    .line 1456
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->dirtyChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1457
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->dirtyChildren:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 1459
    :cond_3
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/Parent;->dirtyChildrenCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Ljavafx/scene/Parent;->dirtyChildrenCount:I

    goto :goto_1
.end method

.method private updateCachedBounds(Ljava/util/List;I)Z
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1545
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Parent;
    move-object/from16 v3, p1

    .local v3, "dirtyNodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move/from16 v4, p2

    .local v4, "remainingDirtyNodes":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1546
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Ljavafx/scene/Parent;->createCachedBounds(Ljava/util/List;)V

    .line 1547
    const/16 v20, 0x1

    move/from16 v2, v20

    .line 1640
    .end local v2    # "this":Ljavafx/scene/Parent;
    :goto_0
    return v2

    .line 1550
    .restart local v2    # "this":Ljavafx/scene/Parent;
    :cond_0
    const/16 v20, 0x0

    move/from16 v5, v20

    .line 1552
    .local v5, "invalidEdges":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->left:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->left:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Ljavafx/scene/Node;->boundsChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1553
    :cond_1
    move/from16 v20, v5

    const/16 v21, 0x1

    or-int/lit8 v20, v20, 0x1

    move/from16 v5, v20

    .line 1555
    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->top:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->top:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Ljavafx/scene/Node;->boundsChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1556
    :cond_3
    move/from16 v20, v5

    const/16 v21, 0x2

    or-int/lit8 v20, v20, 0x2

    move/from16 v5, v20

    .line 1558
    :cond_4
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->near:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->near:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Ljavafx/scene/Node;->boundsChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1559
    :cond_5
    move/from16 v20, v5

    const/16 v21, 0x4

    or-int/lit8 v20, v20, 0x4

    move/from16 v5, v20

    .line 1561
    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->right:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->right:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Ljavafx/scene/Node;->boundsChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 1562
    :cond_7
    move/from16 v20, v5

    const/16 v21, 0x8

    or-int/lit8 v20, v20, 0x8

    move/from16 v5, v20

    .line 1564
    :cond_8
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->bottom:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->bottom:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Ljavafx/scene/Node;->boundsChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 1565
    :cond_9
    move/from16 v20, v5

    const/16 v21, 0x10

    or-int/lit8 v20, v20, 0x10

    move/from16 v5, v20

    .line 1567
    :cond_a
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->far:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->far:Ljavafx/scene/Node;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Ljavafx/scene/Node;->boundsChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1568
    :cond_b
    move/from16 v20, v5

    const/16 v21, 0x20

    or-int/lit8 v20, v20, 0x20

    move/from16 v5, v20

    .line 1573
    :cond_c
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v20

    move/from16 v6, v20

    .line 1574
    .local v6, "minX":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v20

    move/from16 v7, v20

    .line 1575
    .local v7, "minY":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v20

    move/from16 v8, v20

    .line 1576
    .local v8, "minZ":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v20

    move/from16 v9, v20

    .line 1577
    .local v9, "maxX":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v20

    move/from16 v10, v20

    .line 1578
    .local v10, "maxY":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v20

    move/from16 v11, v20

    .line 1582
    .local v11, "maxZ":F
    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v12, v20

    .local v12, "i":I
    :goto_1
    move/from16 v20, v4

    if-lez v20, :cond_13

    .line 1583
    move-object/from16 v20, v3

    move/from16 v21, v12

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/Node;

    move-object/from16 v13, v20

    .line 1584
    .local v13, "node":Ljavafx/scene/Node;
    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget-boolean v0, v0, Ljavafx/scene/Node;->boundsChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 1586
    move-object/from16 v20, v13

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Ljavafx/scene/Node;->boundsChanged:Z

    .line 1587
    add-int/lit8 v4, v4, -0x1

    .line 1588
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v22, v13

    sget-object v23, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Ljavafx/scene/Parent;->getChildTransformedBounds(Ljavafx/scene/Node;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    .line 1589
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_12

    .line 1590
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v20

    move/from16 v14, v20

    .line 1591
    .local v14, "tmpx":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v20

    move/from16 v15, v20

    .line 1592
    .local v15, "tmpy":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v20

    move/from16 v16, v20

    .line 1593
    .local v16, "tmpz":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v20

    move/from16 v17, v20

    .line 1594
    .local v17, "tmpx2":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v20

    move/from16 v18, v20

    .line 1595
    .local v18, "tmpy2":F
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Parent;->tmp:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v20

    move/from16 v19, v20

    .line 1599
    .local v19, "tmpz2":F
    move/from16 v20, v14

    move/from16 v21, v6

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_d

    .line 1600
    move/from16 v20, v14

    move/from16 v6, v20

    .line 1601
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavafx/scene/Parent;->left:Ljavafx/scene/Node;

    .line 1602
    move/from16 v20, v5

    const/16 v21, -0x2

    and-int/lit8 v20, v20, -0x2

    move/from16 v5, v20

    .line 1604
    :cond_d
    move/from16 v20, v15

    move/from16 v21, v7

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_e

    .line 1605
    move/from16 v20, v15

    move/from16 v7, v20

    .line 1606
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavafx/scene/Parent;->top:Ljavafx/scene/Node;

    .line 1607
    move/from16 v20, v5

    const/16 v21, -0x3

    and-int/lit8 v20, v20, -0x3

    move/from16 v5, v20

    .line 1609
    :cond_e
    move/from16 v20, v16

    move/from16 v21, v8

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_f

    .line 1610
    move/from16 v20, v16

    move/from16 v8, v20

    .line 1611
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavafx/scene/Parent;->near:Ljavafx/scene/Node;

    .line 1612
    move/from16 v20, v5

    const/16 v21, -0x5

    and-int/lit8 v20, v20, -0x5

    move/from16 v5, v20

    .line 1614
    :cond_f
    move/from16 v20, v17

    move/from16 v21, v9

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_10

    .line 1615
    move/from16 v20, v17

    move/from16 v9, v20

    .line 1616
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavafx/scene/Parent;->right:Ljavafx/scene/Node;

    .line 1617
    move/from16 v20, v5

    const/16 v21, -0x9

    and-int/lit8 v20, v20, -0x9

    move/from16 v5, v20

    .line 1619
    :cond_10
    move/from16 v20, v18

    move/from16 v21, v10

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_11

    .line 1620
    move/from16 v20, v18

    move/from16 v10, v20

    .line 1621
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavafx/scene/Parent;->bottom:Ljavafx/scene/Node;

    .line 1622
    move/from16 v20, v5

    const/16 v21, -0x11

    and-int/lit8 v20, v20, -0x11

    move/from16 v5, v20

    .line 1624
    :cond_11
    move/from16 v20, v19

    move/from16 v21, v11

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_12

    .line 1625
    move/from16 v20, v19

    move/from16 v11, v20

    .line 1626
    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavafx/scene/Parent;->far:Ljavafx/scene/Node;

    .line 1627
    move/from16 v20, v5

    const/16 v21, -0x21

    and-int/lit8 v20, v20, -0x21

    move/from16 v5, v20

    .line 1582
    .end local v14    # "tmpx":F
    .end local v15    # "tmpy":F
    .end local v16    # "tmpz":F
    .end local v17    # "tmpx2":F
    .end local v18    # "tmpy2":F
    .end local v19    # "tmpz2":F
    :cond_12
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    .line 1633
    .end local v13    # "node":Ljavafx/scene/Node;
    :cond_13
    move/from16 v20, v5

    if-eqz v20, :cond_14

    .line 1635
    const/16 v20, 0x0

    move/from16 v2, v20

    goto/16 :goto_0

    .line 1638
    :cond_14
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v21, v0

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    invoke-virtual/range {v21 .. v27}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 1640
    const/16 v20, 0x1

    move/from16 v2, v20

    goto/16 :goto_0
.end method


# virtual methods
.method childBoundsChanged(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 1734
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->currentlyProcessedChild:Ljavafx/scene/Node;

    if-ne v2, v3, :cond_0

    .line 1735
    .line 1750
    :goto_0
    return-void

    .line 1738
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Parent;->cachedBoundsInvalid:Z

    .line 1744
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljavafx/scene/Parent;->setChildDirty(Ljavafx/scene/Node;Z)V

    .line 1749
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Parent;->impl_geomChanged()V

    .line 1750
    goto :goto_0
.end method

.method childVisibilityChanged(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 1756
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1757
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Parent;->childIncluded(Ljavafx/scene/Node;)V

    .line 1762
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Parent;->impl_geomChanged()V

    .line 1763
    return-void

    .line 1759
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Parent;->childExcluded(Ljavafx/scene/Node;)V

    goto :goto_0
.end method

.method clearSizeCache()V
    .locals 4

    .prologue
    .line 894
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Parent;->sizeCacheClear:Z

    if-eqz v1, :cond_0

    .line 895
    .line 902
    :goto_0
    return-void

    .line 897
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Parent;->sizeCacheClear:Z

    .line 898
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/Parent;->prefWidthCache:D

    .line 899
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/Parent;->prefHeightCache:D

    .line 900
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/Parent;->minWidthCache:D

    .line 901
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/Parent;->minHeightCache:D

    .line 902
    goto :goto_0
.end method

.method protected computeMinHeight(D)D
    .locals 7

    .prologue
    .line 1034
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Parent;->prefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-wide v0
.end method

.method protected computeMinWidth(D)D
    .locals 7

    .prologue
    .line 1020
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Parent;->prefWidth(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-wide v0
.end method

.method protected computePrefHeight(D)D
    .locals 25

    .prologue
    .line 997
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-wide/from16 v1, p1

    .local v1, "width":D
    const-wide/16 v12, 0x0

    move-wide v3, v12

    .line 998
    .local v3, "minY":D
    const-wide/16 v12, 0x0

    move-wide v5, v12

    .line 999
    .local v5, "maxY":D
    const/4 v12, 0x0

    move v7, v12

    .local v7, "i":I
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->size()I

    move-result v12

    move v8, v12

    .local v8, "max":I
    :goto_0
    move v12, v7

    move v13, v8

    if-ge v12, v13, :cond_1

    .line 1000
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v13, v7

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    move-object v9, v12

    .line 1001
    .local v9, "node":Ljavafx/scene/Node;
    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/scene/Node;->isManaged()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1002
    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/scene/Node;->getLayoutY()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v10, v12

    .line 1003
    .local v10, "y":D
    move-wide v12, v3

    move-wide v14, v10

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    move-wide v3, v12

    .line 1004
    move-wide v12, v5

    move-wide v14, v10

    move-object/from16 v16, v0

    move-object/from16 v17, v9

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v17

    move-object/from16 v19, v9

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v19

    move-object/from16 v21, v9

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v21

    invoke-virtual/range {v16 .. v22}, Ljavafx/scene/Parent;->boundedSize(DDD)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v5, v12

    .line 999
    .end local v10    # "y":D
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1007
    .end local v9    # "node":Ljavafx/scene/Node;
    :cond_1
    move-wide v12, v5

    move-wide v14, v3

    sub-double/2addr v12, v14

    move-wide v0, v12

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-wide v0
.end method

.method protected computePrefWidth(D)D
    .locals 25

    .prologue
    .line 972
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-wide/from16 v1, p1

    .local v1, "height":D
    const-wide/16 v12, 0x0

    move-wide v3, v12

    .line 973
    .local v3, "minX":D
    const-wide/16 v12, 0x0

    move-wide v5, v12

    .line 974
    .local v5, "maxX":D
    const/4 v12, 0x0

    move v7, v12

    .local v7, "i":I
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->size()I

    move-result v12

    move v8, v12

    .local v8, "max":I
    :goto_0
    move v12, v7

    move v13, v8

    if-ge v12, v13, :cond_1

    .line 975
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v13, v7

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Node;

    move-object v9, v12

    .line 976
    .local v9, "node":Ljavafx/scene/Node;
    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/scene/Node;->isManaged()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 977
    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v9

    invoke-virtual {v14}, Ljavafx/scene/Node;->getLayoutX()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v10, v12

    .line 978
    .local v10, "x":D
    move-wide v12, v3

    move-wide v14, v10

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    move-wide v3, v12

    .line 979
    move-wide v12, v5

    move-wide v14, v10

    move-object/from16 v16, v0

    move-object/from16 v17, v9

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v17

    move-object/from16 v19, v9

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v19

    move-object/from16 v21, v9

    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v21

    invoke-virtual/range {v16 .. v22}, Ljavafx/scene/Parent;->boundedSize(DDD)D

    move-result-wide v16

    add-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v5, v12

    .line 974
    .end local v10    # "x":D
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 982
    .end local v9    # "node":Ljavafx/scene/Node;
    :cond_1
    move-wide v12, v5

    move-wide v14, v3

    sub-double/2addr v12, v14

    move-wide v0, v12

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-wide v0
.end method

.method public getBaselineOffset()D
    .locals 10

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    const/4 v6, 0x0

    move v1, v6

    .local v1, "i":I
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    move v2, v6

    .local v2, "max":I
    :goto_0
    move v6, v1

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 1045
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v7, v1

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v3, v6

    .line 1046
    .local v3, "child":Ljavafx/scene/Node;
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->isManaged()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1047
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v6

    move-wide v4, v6

    .line 1048
    .local v4, "offset":D
    move-wide v6, v4

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 1049
    .line 1044
    .end local v4    # "offset":D
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    .restart local v4    # "offset":D
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/Node;->getLayoutY()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v8, v4

    add-double/2addr v6, v8

    move-wide v0, v6

    .line 1054
    .end local v0    # "this":Ljavafx/scene/Parent;
    .end local v3    # "child":Ljavafx/scene/Node;
    .end local v4    # "offset":D
    :goto_1
    return-wide v0

    .restart local v0    # "this":Ljavafx/scene/Parent;
    :cond_2
    move-object v6, v0

    invoke-super {v6}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v6

    move-wide v0, v6

    goto :goto_1
.end method

.method protected getChildren()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0
.end method

.method public getChildrenUnmodifiable()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->unmodifiableChildren:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0
.end method

.method public final getImpl_traversalEngine()Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->impl_traversalEngine:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Parent;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->impl_traversalEngine:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    goto :goto_0
.end method

.method protected getManagedChildren()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljavafx/scene/Node;",
            ">()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->unmodifiableManagedChildren:Ljava/util/List;

    if-nez v4, :cond_1

    .line 588
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Ljavafx/scene/Parent;->unmodifiableManagedChildren:Ljava/util/List;

    .line 589
    const/4 v4, 0x0

    move v1, v4

    .local v1, "i":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    move v2, v4

    .local v2, "max":I
    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 590
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 591
    .local v3, "e":Ljavafx/scene/Node;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->isManaged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 592
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->unmodifiableManagedChildren:Ljava/util/List;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 589
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v1    # "i":I
    .end local v2    # "max":I
    .end local v3    # "e":Ljavafx/scene/Node;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->unmodifiableManagedChildren:Ljava/util/List;

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0
.end method

.method public final getStylesheets()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->stylesheets:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0
.end method

.method protected impl_computeContains(DD)Z
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1772
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Parent;
    move-wide/from16 v2, p1

    .local v2, "localX":D
    move-wide/from16 v4, p3

    .local v4, "localY":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v11

    iget-object v11, v11, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    move-object v6, v11

    .line 1773
    .local v6, "tempPt":Lcom/sun/javafx/geom/Point2D;
    const/4 v11, 0x0

    move v7, v11

    .local v7, "i":I
    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    move v8, v11

    .local v8, "max":I
    :goto_0
    move v11, v7

    move v12, v8

    if-ge v11, v12, :cond_1

    .line 1774
    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v12, v7

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/Node;

    move-object v9, v11

    .line 1775
    .local v9, "node":Ljavafx/scene/Node;
    move-object v11, v6

    move-wide v12, v2

    double-to-float v12, v12

    iput v12, v11, Lcom/sun/javafx/geom/Point2D;->x:F

    .line 1776
    move-object v11, v6

    move-wide v12, v4

    double-to-float v12, v12

    iput v12, v11, Lcom/sun/javafx/geom/Point2D;->y:F

    .line 1778
    move-object v11, v9

    move-object v12, v6

    :try_start_0
    invoke-virtual {v11, v12}, Ljavafx/scene/Node;->parentToLocal(Lcom/sun/javafx/geom/Point2D;)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1781
    .line 1782
    move-object v11, v9

    move-object v12, v6

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v12, v12

    move-object v14, v6

    iget v14, v14, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->contains(DD)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1783
    const/4 v11, 0x1

    move v1, v11

    .line 1786
    .end local v1    # "this":Ljavafx/scene/Parent;
    .end local v9    # "node":Ljavafx/scene/Node;
    :goto_1
    return v1

    .line 1779
    .restart local v1    # "this":Ljavafx/scene/Parent;
    .restart local v9    # "node":Ljavafx/scene/Node;
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 1773
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1786
    .end local v9    # "node":Ljavafx/scene/Node;
    :cond_1
    const/4 v11, 0x0

    move v1, v11

    goto :goto_1
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1371
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/Parent;
    move-object/from16 v4, p1

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1372
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v22

    move-object/from16 v3, v22

    .line 1440
    .end local v3    # "this":Ljavafx/scene/Parent;
    :goto_0
    return-object v3

    .line 1375
    .restart local v3    # "this":Ljavafx/scene/Parent;
    :cond_0
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1379
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-boolean v0, v0, Ljavafx/scene/Parent;->cachedBoundsInvalid:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1380
    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v22}, Ljavafx/scene/Parent;->recomputeBounds()V

    .line 1382
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Parent;->dirtyChildren:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 1383
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Parent;->dirtyChildren:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1385
    :cond_1
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Ljavafx/scene/Parent;->cachedBoundsInvalid:Z

    .line 1386
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Ljavafx/scene/Parent;->dirtyChildrenCount:I

    .line 1388
    :cond_2
    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v22

    if-nez v22, :cond_3

    .line 1389
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v25

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v24, v0

    .line 1390
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v25, v0

    .line 1391
    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v27, v5

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v27

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v26, v0

    .line 1392
    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v28, v5

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v27, v0

    .line 1393
    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v27

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v29, v5

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v29

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v28, v0

    .line 1394
    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    .line 1389
    invoke-virtual/range {v22 .. v28}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v22

    move-object/from16 v4, v22

    .line 1399
    :goto_1
    move-object/from16 v22, v4

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 1396
    :cond_3
    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/Parent;->cachedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v22

    move-object/from16 v4, v22

    goto :goto_1

    .line 1403
    :cond_4
    const-wide v22, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v6, v22

    .local v6, "minX":D
    const-wide v22, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v8, v22

    .local v8, "minY":D
    const-wide v22, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v10, v22

    .line 1404
    .local v10, "minZ":D
    const-wide/16 v22, 0x1

    move-wide/from16 v12, v22

    .local v12, "maxX":D
    const-wide/16 v22, 0x1

    move-wide/from16 v14, v22

    .local v14, "maxY":D
    const-wide/16 v22, 0x1

    move-wide/from16 v16, v22

    .line 1405
    .local v16, "maxZ":D
    const/16 v22, 0x1

    move/from16 v18, v22

    .line 1406
    .local v18, "first":Z
    const/16 v22, 0x0

    move/from16 v19, v22

    .local v19, "i":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljavafx/collections/ObservableList;->size()I

    move-result v22

    move/from16 v20, v22

    .local v20, "max":I
    :goto_2
    move/from16 v22, v19

    move/from16 v23, v20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 1407
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move-object/from16 v22, v0

    move/from16 v23, v19

    invoke-interface/range {v22 .. v23}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/Node;

    move-object/from16 v21, v22

    .line 1408
    .local v21, "node":Ljavafx/scene/Node;
    move-object/from16 v22, v21

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Node;->isVisible()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1409
    move-object/from16 v22, v3

    move-object/from16 v23, v21

    move-object/from16 v24, v5

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v25}, Ljavafx/scene/Parent;->getChildTransformedBounds(Ljavafx/scene/Node;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v22

    move-object/from16 v4, v22

    .line 1412
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1406
    :cond_5
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1413
    :cond_6
    move/from16 v22, v18

    if-eqz v22, :cond_7

    .line 1414
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v6, v22

    .line 1415
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v8, v22

    .line 1416
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v10, v22

    .line 1417
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v12, v22

    .line 1418
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v14, v22

    .line 1419
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v16, v22

    .line 1420
    const/16 v22, 0x0

    move/from16 v18, v22

    goto :goto_3

    .line 1422
    :cond_7
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v6

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v6, v22

    .line 1423
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v8

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 1424
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v10

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 1425
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v12

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 1426
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v14

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 1427
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v16

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    move-wide/from16 v16, v22

    goto/16 :goto_3

    .line 1434
    .end local v21    # "node":Ljavafx/scene/Node;
    :cond_8
    move/from16 v22, v18

    if-eqz v22, :cond_9

    .line 1435
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v22

    .line 1440
    :goto_4
    move-object/from16 v22, v4

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 1437
    :cond_9
    move-object/from16 v22, v4

    move-wide/from16 v23, v6

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v24, v8

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move-wide/from16 v25, v10

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move-wide/from16 v26, v12

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move-wide/from16 v27, v14

    move-wide/from16 v0, v27

    double-to-float v0, v0

    move/from16 v27, v0

    move-wide/from16 v28, v16

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v22 .. v28}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v22

    move-object/from16 v4, v22

    goto :goto_4
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1298
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGGroup;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGGroup;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0
.end method

.method public impl_getAllParentStylesheets()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    const/4 v5, 0x0

    move-object v1, v5

    .line 1198
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v5

    move-object v2, v5

    .line 1199
    .local v2, "myParent":Ljavafx/scene/Parent;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 1207
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Parent;->impl_getAllParentStylesheets()Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 1210
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Parent;->stylesheets:Ljavafx/collections/ObservableList;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Parent;->stylesheets:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1211
    move-object v5, v1

    if-nez v5, :cond_1

    .line 1212
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Parent;->stylesheets:Ljavafx/collections/ObservableList;

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    .line 1214
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .local v3, "n":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Parent;->stylesheets:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    move v4, v5

    .local v4, "nMax":I
    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_2

    .line 1215
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->stylesheets:Ljavafx/collections/ObservableList;

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1214
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1219
    .end local v3    # "n":I
    .end local v4    # "nMax":I
    :cond_2
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0
.end method

.method protected impl_pickNodeLocal(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 697
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object v2, p2

    .local v2, "result":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/Parent;->impl_intersectsBounds(Lcom/sun/javafx/geom/PickRay;)D

    move-result-wide v6

    move-wide v3, v6

    .line 699
    .local v3, "boundsDistance":D
    move-wide v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    .line 700
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    if-ltz v6, :cond_1

    .line 701
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v7, v5

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/Node;->impl_pickNode(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)V

    .line 702
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/scene/input/PickResultChooser;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 703
    .line 711
    .end local v5    # "i":I
    :goto_1
    return-void

    .line 700
    .restart local v5    # "i":I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 707
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Parent;->isPickOnBounds()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 708
    move-object v6, v2

    move-object v7, v0

    move-wide v8, v3

    move-object v10, v1

    move-wide v11, v3

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/scene/input/PickResultChooser;->computePoint(Lcom/sun/javafx/geom/PickRay;D)Ljavafx/geometry/Point3D;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/scene/input/PickResultChooser;->offer(Ljavafx/scene/Node;DLjavafx/geometry/Point3D;)Z

    move-result v6

    .line 711
    .end local v5    # "i":I
    :cond_2
    goto :goto_1
.end method

.method protected impl_processCSS(Ljavafx/beans/value/WritableValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/WritableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "unused":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<Ljava/lang/Boolean;>;"
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v7, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-ne v6, v7, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1235
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v7, Lcom/sun/javafx/scene/CssFlags;->DIRTY_BRANCH:Lcom/sun/javafx/scene/CssFlags;

    if-ne v6, v7, :cond_1

    .line 1236
    move-object v6, v0

    invoke-super {v6}, Ljavafx/scene/Node;->processCSS()V

    .line 1237
    goto :goto_0

    .line 1241
    :cond_1
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Ljavafx/scene/Node;->impl_processCSS(Ljavafx/beans/value/WritableValue;)V

    .line 1244
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 1255
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    new-array v7, v7, [Ljavafx/scene/Node;

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavafx/scene/Node;

    move-object v2, v6

    .line 1258
    .local v2, "childArray":[Ljavafx/scene/Node;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_1
    move v6, v3

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_6

    .line 1260
    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 1263
    .local v4, "child":Ljavafx/scene/Node;
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v6

    move-object v5, v6

    .line 1264
    .local v5, "childParent":Ljavafx/scene/Parent;
    move-object v6, v5

    if-eqz v6, :cond_3

    move-object v6, v5

    move-object v7, v0

    if-eq v6, v7, :cond_4

    .line 1258
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1269
    :cond_4
    sget-object v6, Lcom/sun/javafx/scene/CssFlags;->UPDATE:Lcom/sun/javafx/scene/CssFlags;

    move-object v7, v4

    iget-object v7, v7, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/CssFlags;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-lez v6, :cond_5

    .line 1270
    move-object v6, v4

    sget-object v7, Lcom/sun/javafx/scene/CssFlags;->UPDATE:Lcom/sun/javafx/scene/CssFlags;

    iput-object v7, v6, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 1272
    :cond_5
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->impl_processCSS(Ljavafx/beans/value/WritableValue;)V

    goto :goto_2

    .line 1274
    .end local v4    # "child":Ljavafx/scene/Node;
    .end local v5    # "childParent":Ljavafx/scene/Parent;
    :cond_6
    goto :goto_0
.end method

.method public impl_processMXNode(Lcom/sun/javafx/jmx/MXNodeAlgorithm;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1795
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "alg":Lcom/sun/javafx/jmx/MXNodeAlgorithm;
    move-object v2, p2

    .local v2, "ctx":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/jmx/MXNodeAlgorithm;->processContainerNode(Ljavafx/scene/Parent;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0
.end method

.method final impl_toBack(Ljavafx/scene/Node;)V
    .locals 7

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    invoke-static {}, Lcom/sun/javafx/util/Utils;->assertionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->childSet:Ljava/util/Set;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 633
    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "specified node is not in the list of children"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 638
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    if-eq v3, v4, :cond_1

    .line 639
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/Parent;->childrenTriggerPermutation:Z

    .line 641
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 642
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/Parent;->childrenTriggerPermutation:Z

    .line 645
    .line 647
    :cond_1
    return-void

    .line 644
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/Parent;->childrenTriggerPermutation:Z

    move-object v3, v2

    throw v3
.end method

.method final impl_toFront(Ljavafx/scene/Node;)V
    .locals 7

    .prologue
    .line 611
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    invoke-static {}, Lcom/sun/javafx/util/Utils;->assertionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->childSet:Ljava/util/Set;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 613
    new-instance v3, Ljava/lang/AssertionError;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "specified node is not in the list of children"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 618
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    if-eq v3, v4, :cond_1

    .line 619
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/Parent;->childrenTriggerPermutation:Z

    .line 621
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 622
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 624
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/Parent;->childrenTriggerPermutation:Z

    .line 625
    .line 627
    :cond_1
    return-void

    .line 624
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/Parent;->childrenTriggerPermutation:Z

    move-object v3, v2

    throw v3
.end method

.method public final impl_traversalEngineProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->impl_traversalEngine:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 771
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "impl_traversalEngine"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/Parent;->impl_traversalEngine:Ljavafx/beans/property/ObjectProperty;

    .line 775
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->impl_traversalEngine:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v3, v0

    invoke-super {v3}, Ljavafx/scene/Node;->impl_updatePeer()V

    .line 107
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Parent;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGGroup;

    move-object v1, v3

    .line 109
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGGroup;
    invoke-static {}, Lcom/sun/javafx/util/Utils;->assertionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGGroup;->getChildren()Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 111
    .local v2, "pgnodes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/Parent;->pgChildrenSize:I

    if-eq v3, v4, :cond_0

    .line 112
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** pgnodes.size() ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] != pgChildrenSize ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Ljavafx/scene/Parent;->pgChildrenSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    .end local v2    # "pgnodes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    :cond_0
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->PARENT_CHILDREN:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/Parent;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/Parent;->startIdx:I

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGGroup;->clearFrom(I)V

    .line 123
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/Parent;->startIdx:I

    move v2, v3

    .local v2, "idx":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 124
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGGroup;->add(ILcom/sun/javafx/sg/prism/NGNode;)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/Parent;->removedChildrenOptimizationDisabled:Z

    if-eqz v3, :cond_6

    .line 127
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGGroup;->markDirty()V

    .line 128
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/Parent;->removedChildrenOptimizationDisabled:Z

    .line 136
    .end local v2    # "idx":I
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->removed:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 137
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->removed:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 139
    :cond_3
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    iput v4, v3, Ljavafx/scene/Parent;->pgChildrenSize:I

    .line 140
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/Parent;->pgChildrenSize:I

    iput v4, v3, Ljavafx/scene/Parent;->startIdx:I

    .line 143
    :cond_4
    invoke-static {}, Lcom/sun/javafx/util/Utils;->assertionEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Parent;->validatePG()V

    .line 144
    :cond_5
    return-void

    .line 130
    .restart local v2    # "idx":I
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->removed:Ljava/util/List;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->removed:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->removed:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 132
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->removed:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    invoke-virtual {v4}, Ljavafx/scene/Node;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGGroup;->addToRemoved(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method isConnected()Z
    .locals 2

    .prologue
    .line 714
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/Node;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Parent;->sceneRoot:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Parent;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Parent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isNeedsLayout()Z
    .locals 3

    .prologue
    .line 812
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

    sget-object v2, Lcom/sun/javafx/scene/LayoutFlags;->NEEDS_LAYOUT:Lcom/sun/javafx/scene/LayoutFlags;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Parent;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Parent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final isSceneRoot()Z
    .locals 2

    .prologue
    .line 1130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Parent;->sceneRoot:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Parent;
    return v0
.end method

.method public final layout()V
    .locals 6

    .prologue
    .line 1063
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    sget-object v4, Ljavafx/scene/Parent$4;->$SwitchMap$com$sun$javafx$scene$LayoutFlags:[I

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Parent;->layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/LayoutFlags;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1094
    :goto_0
    return-void

    .line 1065
    :pswitch_0
    goto :goto_0

    .line 1067
    :pswitch_1
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/Parent;->performingLayout:Z

    if-eqz v4, :cond_0

    .line 1076
    goto :goto_0

    .line 1078
    :cond_0
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Ljavafx/scene/Parent;->performingLayout:Z

    .line 1079
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Parent;->layoutChildren()V

    .line 1082
    :pswitch_2
    const/4 v4, 0x0

    move v1, v4

    .local v1, "i":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    move v2, v4

    .local v2, "max":I
    :goto_1
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_3

    .line 1083
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 1084
    .local v3, "child":Ljavafx/scene/Node;
    move-object v4, v3

    instance-of v4, v4, Ljavafx/scene/Parent;

    if-eqz v4, :cond_2

    .line 1085
    move-object v4, v3

    check-cast v4, Ljavafx/scene/Parent;

    invoke-virtual {v4}, Ljavafx/scene/Parent;->layout()V

    .line 1082
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1086
    :cond_2
    move-object v4, v3

    instance-of v4, v4, Ljavafx/scene/SubScene;

    if-eqz v4, :cond_1

    .line 1087
    move-object v4, v3

    check-cast v4, Ljavafx/scene/SubScene;

    invoke-virtual {v4}, Ljavafx/scene/SubScene;->layoutPass()V

    goto :goto_2

    .line 1090
    .end local v3    # "child":Ljavafx/scene/Node;
    :cond_3
    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/LayoutFlags;->CLEAN:Lcom/sun/javafx/scene/LayoutFlags;

    invoke-virtual {v4, v5}, Ljavafx/scene/Parent;->setLayoutFlag(Lcom/sun/javafx/scene/LayoutFlags;)V

    .line 1091
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/Parent;->performingLayout:Z

    goto :goto_0

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected layoutChildren()V
    .locals 6

    .prologue
    .line 1105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    const/4 v4, 0x0

    move v1, v4

    .local v1, "i":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    move v2, v4

    .local v2, "max":I
    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 1106
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 1107
    .local v3, "node":Ljavafx/scene/Node;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->isResizable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->isManaged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1108
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->autosize()V

    .line 1105
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    .end local v3    # "node":Ljavafx/scene/Node;
    :cond_1
    return-void
.end method

.method public lookup(Ljava/lang/String;)Ljavafx/scene/Node;
    .locals 8

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "selector":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Ljavafx/scene/Node;->lookup(Ljava/lang/String;)Ljavafx/scene/Node;

    move-result-object v6

    move-object v2, v6

    .line 719
    .local v2, "n":Ljavafx/scene/Node;
    move-object v6, v2

    if-nez v6, :cond_1

    .line 720
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    move v4, v6

    .local v4, "max":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 721
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v5, v6

    .line 722
    .local v5, "node":Ljavafx/scene/Node;
    move-object v6, v5

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->lookup(Ljava/lang/String;)Ljavafx/scene/Node;

    move-result-object v6

    move-object v2, v6

    .line 723
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    move-object v0, v6

    .line 726
    .end local v0    # "this":Ljavafx/scene/Parent;
    .end local v3    # "i":I
    .end local v4    # "max":I
    .end local v5    # "node":Ljavafx/scene/Node;
    :goto_1
    return-object v0

    .line 720
    .restart local v0    # "this":Ljavafx/scene/Parent;
    .restart local v3    # "i":I
    .restart local v4    # "max":I
    .restart local v5    # "node":Ljavafx/scene/Node;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 726
    .end local v3    # "i":I
    .end local v4    # "max":I
    .end local v5    # "node":Ljavafx/scene/Node;
    :cond_1
    move-object v6, v2

    move-object v0, v6

    goto :goto_1
.end method

.method lookupAll(Lcom/sun/javafx/css/Selector;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/Selector;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "selector":Lcom/sun/javafx/css/Selector;
    move-object v2, p2

    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/Node;->lookupAll(Lcom/sun/javafx/css/Selector;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 735
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    move v4, v6

    .local v4, "max":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 736
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v5, v6

    .line 737
    .local v5, "node":Ljavafx/scene/Node;
    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/Node;->lookupAll(Lcom/sun/javafx/css/Selector;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 735
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 739
    .end local v5    # "node":Ljavafx/scene/Node;
    :cond_0
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0
.end method

.method final managedChildChanged()V
    .locals 3

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Parent;->requestLayout()V

    .line 606
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/Parent;->unmodifiableManagedChildren:Ljava/util/List;

    .line 607
    return-void
.end method

.method public minHeight(D)D
    .locals 11

    .prologue
    .line 947
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Parent;
    move-wide v2, p1

    .local v2, "width":D
    move-wide v6, v2

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    .line 948
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->minHeightCache:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 949
    move-object v6, v1

    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Parent;->computeMinHeight(D)D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/Parent;->minHeightCache:D

    .line 950
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->minHeightCache:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->minHeightCache:D

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Ljavafx/scene/Parent;->minHeightCache:D

    .line 951
    :cond_1
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/Parent;->sizeCacheClear:Z

    .line 953
    :cond_2
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->minHeightCache:D

    move-wide v1, v6

    .line 956
    .end local v1    # "this":Ljavafx/scene/Parent;
    :goto_0
    return-wide v1

    .line 955
    .restart local v1    # "this":Ljavafx/scene/Parent;
    :cond_3
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/Parent;->computeMinHeight(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 956
    .local v4, "result":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_4

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    :cond_4
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v1, v6

    goto :goto_0

    :cond_5
    move-wide v6, v4

    goto :goto_1
.end method

.method public minWidth(D)D
    .locals 11

    .prologue
    .line 933
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Parent;
    move-wide v2, p1

    .local v2, "height":D
    move-wide v6, v2

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    .line 934
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->minWidthCache:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 935
    move-object v6, v1

    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Parent;->computeMinWidth(D)D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/Parent;->minWidthCache:D

    .line 936
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->minWidthCache:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->minWidthCache:D

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Ljavafx/scene/Parent;->minWidthCache:D

    .line 937
    :cond_1
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/Parent;->sizeCacheClear:Z

    .line 939
    :cond_2
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->minWidthCache:D

    move-wide v1, v6

    .line 942
    .end local v1    # "this":Ljavafx/scene/Parent;
    :goto_0
    return-wide v1

    .line 941
    .restart local v1    # "this":Ljavafx/scene/Parent;
    :cond_3
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/Parent;->computeMinWidth(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 942
    .local v4, "result":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_4

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    :cond_4
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v1, v6

    goto :goto_0

    :cond_5
    move-wide v6, v4

    goto :goto_1
.end method

.method public final needsLayoutProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 9

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->needsLayout:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 817
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "needsLayout"

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

    sget-object v7, Lcom/sun/javafx/scene/LayoutFlags;->NEEDS_LAYOUT:Lcom/sun/javafx/scene/LayoutFlags;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/Parent;->needsLayout:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 819
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->needsLayout:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0

    .line 817
    .restart local v0    # "this":Ljavafx/scene/Parent;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method nodeResolvedOrientationChanged()V
    .locals 5

    .prologue
    .line 1303
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    move v2, v3

    .local v2, "max":I
    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 1304
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->parentResolvedOrientationInvalidated()V

    .line 1303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1306
    :cond_0
    return-void
.end method

.method final notifyManagedChanged()V
    .locals 3

    .prologue
    .line 1126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Parent;->isManaged()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/Parent;->sceneRoot:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Ljavafx/scene/Parent;->layoutRoot:Z

    .line 1127
    return-void

    .line 1126
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public prefHeight(D)D
    .locals 11

    .prologue
    .line 919
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Parent;
    move-wide v2, p1

    .local v2, "width":D
    move-wide v6, v2

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    .line 920
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->prefHeightCache:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 921
    move-object v6, v1

    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Parent;->computePrefHeight(D)D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/Parent;->prefHeightCache:D

    .line 922
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->prefHeightCache:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->prefHeightCache:D

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Ljavafx/scene/Parent;->prefHeightCache:D

    .line 923
    :cond_1
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/Parent;->sizeCacheClear:Z

    .line 925
    :cond_2
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->prefHeightCache:D

    move-wide v1, v6

    .line 928
    .end local v1    # "this":Ljavafx/scene/Parent;
    :goto_0
    return-wide v1

    .line 927
    .restart local v1    # "this":Ljavafx/scene/Parent;
    :cond_3
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/Parent;->computePrefHeight(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 928
    .local v4, "result":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_4

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    :cond_4
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v1, v6

    goto :goto_0

    :cond_5
    move-wide v6, v4

    goto :goto_1
.end method

.method public prefWidth(D)D
    .locals 11

    .prologue
    .line 905
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Parent;
    move-wide v2, p1

    .local v2, "height":D
    move-wide v6, v2

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    .line 906
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->prefWidthCache:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 907
    move-object v6, v1

    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Parent;->computePrefWidth(D)D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/Parent;->prefWidthCache:D

    .line 908
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->prefWidthCache:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->prefWidthCache:D

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    move-object v6, v1

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Ljavafx/scene/Parent;->prefWidthCache:D

    .line 909
    :cond_1
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/Parent;->sizeCacheClear:Z

    .line 911
    :cond_2
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/Parent;->prefWidthCache:D

    move-wide v1, v6

    .line 914
    .end local v1    # "this":Ljavafx/scene/Parent;
    :goto_0
    return-wide v1

    .line 913
    .restart local v1    # "this":Ljavafx/scene/Parent;
    :cond_3
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/Parent;->computePrefWidth(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 914
    .local v4, "result":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_4

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    :cond_4
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v1, v6

    goto :goto_0

    :cond_5
    move-wide v6, v4

    goto :goto_1
.end method

.method printSeq(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "nodes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v6, v1

    move-object v3, v6

    .line 192
    .local v3, "str":Ljava/lang/String;
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v5, v6

    .line 193
    .local v5, "nn":Ljavafx/scene/Node;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 194
    goto :goto_0

    .line 195
    .end local v5    # "nn":Ljavafx/scene/Node;
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1800
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/Parent$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1802
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/Node;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Parent;
    :goto_0
    return-object v0

    .line 1801
    .restart local v0    # "this":Ljavafx/scene/Parent;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1800
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method releaseAccessible()V
    .locals 6

    .prologue
    .line 1807
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    const/4 v4, 0x0

    move v1, v4

    .local v1, "i":I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    move v2, v4

    .local v2, "max":I
    :goto_0
    move v4, v1

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 1808
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 1809
    .local v3, "node":Ljavafx/scene/Node;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->releaseAccessible()V

    .line 1807
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1811
    .end local v3    # "node":Ljavafx/scene/Node;
    :cond_0
    move-object v4, v0

    invoke-super {v4}, Ljavafx/scene/Node;->releaseAccessible()V

    .line 1812
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 870
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Parent;->clearSizeCache()V

    .line 871
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/Parent;->markDirtyLayout(Z)V

    .line 872
    return-void
.end method

.method protected final requestParentLayout()V
    .locals 3

    .prologue
    .line 884
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/Parent;->layoutRoot:Z

    if-nez v2, :cond_0

    .line 885
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 886
    .local v1, "parent":Ljavafx/scene/Parent;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-boolean v2, v2, Ljavafx/scene/Parent;->performingLayout:Z

    if-nez v2, :cond_0

    .line 887
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->requestLayout()V

    .line 891
    .end local v1    # "parent":Ljavafx/scene/Parent;
    :cond_0
    return-void
.end method

.method scenesChanged(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Ljavafx/scene/Scene;Ljavafx/scene/SubScene;)V
    .locals 10

    .prologue
    .line 653
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "newScene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "newSubScene":Ljavafx/scene/SubScene;
    move-object v3, p3

    .local v3, "oldScene":Ljavafx/scene/Scene;
    move-object v4, p4

    .local v4, "oldSubScene":Ljavafx/scene/SubScene;
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v1

    if-nez v6, :cond_0

    .line 655
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/css/StyleManager;->forget(Ljavafx/scene/Parent;)V

    .line 658
    :cond_0
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 659
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v7, v5

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v7, v1

    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Ljavafx/scene/Node;->setScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V

    .line 658
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 662
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

    sget-object v7, Lcom/sun/javafx/scene/LayoutFlags;->CLEAN:Lcom/sun/javafx/scene/LayoutFlags;

    if-eq v6, v7, :cond_6

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 664
    .local v5, "awaitingLayout":Z
    move-object v6, v0

    move-object v7, v2

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v8, v0

    if-eq v7, v8, :cond_3

    :cond_2
    move-object v7, v1

    if-eqz v7, :cond_7

    move-object v7, v1

    .line 665
    invoke-virtual {v7}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v8, v0

    if-ne v7, v8, :cond_7

    :cond_3
    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Ljavafx/scene/Parent;->sceneRoot:Z

    .line 666
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Parent;->isManaged()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Parent;->sceneRoot:Z

    if-eqz v7, :cond_8

    :cond_4
    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Ljavafx/scene/Parent;->layoutRoot:Z

    .line 669
    move v6, v5

    if-eqz v6, :cond_5

    .line 672
    move-object v6, v1

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-boolean v6, v6, Ljavafx/scene/Parent;->layoutRoot:Z

    if-eqz v6, :cond_5

    .line 673
    move-object v6, v2

    if-eqz v6, :cond_5

    .line 674
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljavafx/scene/SubScene;->setDirtyLayout(Ljavafx/scene/Parent;)V

    .line 678
    :cond_5
    return-void

    .line 662
    .local v5, "i":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 665
    .local v5, "awaitingLayout":Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 666
    :cond_8
    const/4 v7, 0x0

    goto :goto_3
.end method

.method setDerivedDepthTest(Z)V
    .locals 7

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move v1, p1

    .local v1, "value":Z
    move-object v5, v0

    move v6, v1

    invoke-super {v5, v6}, Ljavafx/scene/Node;->setDerivedDepthTest(Z)V

    .line 684
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    move v3, v5

    .local v3, "max":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 685
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v4, v5

    .line 686
    .local v4, "node":Ljavafx/scene/Node;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/Node;->computeDerivedDepthTest()V

    .line 684
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 688
    .end local v4    # "node":Ljavafx/scene/Node;
    :cond_0
    return-void
.end method

.method public final setImpl_traversalEngine(Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "value":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Parent;->impl_traversalEngineProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 753
    return-void
.end method

.method setLayoutFlag(Lcom/sun/javafx/scene/LayoutFlags;)V
    .locals 5

    .prologue
    .line 837
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, p1

    .local v1, "flag":Lcom/sun/javafx/scene/LayoutFlags;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Parent;->needsLayout:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-eqz v2, :cond_0

    .line 838
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Parent;->needsLayout:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/LayoutFlags;->NEEDS_LAYOUT:Lcom/sun/javafx/scene/LayoutFlags;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 840
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Parent;->layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

    .line 841
    return-void

    .line 838
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected final setNeedsLayout(Z)V
    .locals 8

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move v1, p1

    .local v1, "value":Z
    move v6, v1

    if-eqz v6, :cond_1

    .line 794
    move-object v6, v0

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljavafx/scene/Parent;->markDirtyLayout(Z)V

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

    sget-object v7, Lcom/sun/javafx/scene/LayoutFlags;->NEEDS_LAYOUT:Lcom/sun/javafx/scene/LayoutFlags;

    if-ne v6, v7, :cond_0

    .line 796
    const/4 v6, 0x0

    move v2, v6

    .line 797
    .local v2, "hasBranch":Z
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    move v4, v6

    .local v4, "max":I
    :goto_1
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 798
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v5, v6

    .line 799
    .local v5, "child":Ljavafx/scene/Node;
    move-object v6, v5

    instance-of v6, v6, Ljavafx/scene/Parent;

    if-eqz v6, :cond_3

    .line 800
    move-object v6, v5

    check-cast v6, Ljavafx/scene/Parent;

    iget-object v6, v6, Ljavafx/scene/Parent;->layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

    sget-object v7, Lcom/sun/javafx/scene/LayoutFlags;->CLEAN:Lcom/sun/javafx/scene/LayoutFlags;

    if-eq v6, v7, :cond_3

    .line 801
    const/4 v6, 0x1

    move v2, v6

    .line 807
    .end local v5    # "child":Ljavafx/scene/Node;
    :cond_2
    move-object v6, v0

    move v7, v2

    if-eqz v7, :cond_4

    sget-object v7, Lcom/sun/javafx/scene/LayoutFlags;->DIRTY_BRANCH:Lcom/sun/javafx/scene/LayoutFlags;

    :goto_2
    invoke-virtual {v6, v7}, Ljavafx/scene/Parent;->setLayoutFlag(Lcom/sun/javafx/scene/LayoutFlags;)V

    goto :goto_0

    .line 797
    .restart local v5    # "child":Ljavafx/scene/Node;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 807
    .end local v5    # "child":Ljavafx/scene/Node;
    :cond_4
    sget-object v7, Lcom/sun/javafx/scene/LayoutFlags;->CLEAN:Lcom/sun/javafx/scene/LayoutFlags;

    goto :goto_2
.end method

.method test_getRemoved()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1818
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Parent;->removed:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Parent;
    return-object v0
.end method

.method protected updateBounds()V
    .locals 5

    .prologue
    .line 1708
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    move v2, v3

    .local v2, "max":I
    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 1709
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->updateBounds()V

    .line 1708
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1711
    :cond_0
    move-object v3, v0

    invoke-super {v3}, Ljavafx/scene/Node;->updateBounds()V

    .line 1712
    return-void
.end method

.method validatePG()V
    .locals 10

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Parent;
    const/4 v6, 0x0

    move v1, v6

    .line 166
    .local v1, "assertionFailed":Z
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Parent;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/sg/prism/NGGroup;

    move-object v2, v6

    .line 167
    .local v2, "peer":Lcom/sun/javafx/sg/prism/NGGroup;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGGroup;->getChildren()Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    .line 168
    .local v3, "pgnodes":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 169
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** pgnodes.size validatePG() ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] != children.size() ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    const/4 v6, 0x1

    move v1, v6

    .line 184
    :cond_0
    move v6, v1

    if-eqz v6, :cond_4

    .line 185
    new-instance v6, Ljava/lang/AssertionError;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "validation of PGGroup children failed"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 172
    :cond_1
    const/4 v6, 0x0

    move v4, v6

    .local v4, "idx":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 173
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Parent;->children:Ljavafx/collections/ObservableList;

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v5, v6

    .line 174
    .local v5, "n":Ljavafx/scene/Node;
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v6

    move-object v7, v0

    if-eq v6, v7, :cond_2

    .line 175
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** this="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " validatePG children["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "].parent= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    const/4 v6, 0x1

    move v1, v6

    .line 178
    :cond_2
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/Node;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    move-object v7, v3

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_3

    .line 179
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*** pgnodes["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] validatePG != children["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    const/4 v6, 0x1

    move v1, v6

    .line 172
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 188
    .end local v4    # "idx":I
    .end local v5    # "n":Ljavafx/scene/Node;
    :cond_4
    return-void
.end method
