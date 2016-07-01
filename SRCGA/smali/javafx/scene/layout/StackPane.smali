.class public Ljavafx/scene/layout/StackPane;
.super Ljavafx/scene/layout/Pane;
.source "StackPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/layout/StackPane$StyleableProperties;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_CONSTRAINT:Ljava/lang/String; = "stackpane-alignment"

.field private static final MARGIN_CONSTRAINT:Ljava/lang/String; = "stackpane-margin"

.field private static final marginAccessor:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/Node;",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private bias:Ljavafx/geometry/Orientation;

.field private biasDirty:Z

.field private performingLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Ljavafx/scene/layout/StackPane$$Lambda$2;->lambdaFactory$()Ljavafx/util/Callback;

    move-result-object v0

    sput-object v0, Ljavafx/scene/layout/StackPane;->marginAccessor:Ljavafx/util/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 134
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/layout/StackPane;->biasDirty:Z

    .line 135
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/layout/StackPane;->performingLayout:Z

    .line 204
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-object v1, p1

    .local v1, "children":[Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 134
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/layout/StackPane;->biasDirty:Z

    .line 135
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/layout/StackPane;->performingLayout:Z

    .line 213
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 214
    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/layout/StackPane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/layout/StackPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/StackPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/layout/StackPane;
    return-object v0
.end method

.method static synthetic access$lambda$0(DLjava/lang/Integer;)Ljava/lang/Double;
    .locals 6

    move-wide v0, p0

    move-object v2, p2

    move-wide v3, v0

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->lambda$layoutChildren$510(DLjava/lang/Integer;)Ljava/lang/Double;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/StackPane;->lambda$static$509(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static clearConstraints(Ljavafx/scene/Node;)V
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/StackPane;->setAlignment(Ljavafx/scene/Node;Ljavafx/geometry/Pos;)V

    .line 193
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/layout/StackPane;->setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V

    .line 194
    return-void
.end method

.method public static getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;
    .locals 3

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "stackpane-alignment"

    invoke-static {v1, v2}, Ljavafx/scene/layout/StackPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getAlignmentInternal()Ljavafx/geometry/Pos;
    .locals 3

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v2

    move-object v1, v2

    .line 253
    .local v1, "localPos":Ljavafx/geometry/Pos;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/StackPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/StackPane;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 394
    # getter for: Ljavafx/scene/layout/StackPane$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/layout/StackPane$StyleableProperties;->access$200()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 3

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, v0

    const-string v2, "stackpane-margin"

    invoke-static {v1, v2}, Ljavafx/scene/layout/StackPane;->getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "child":Ljavafx/scene/Node;
    return-object v0
.end method

.method private static synthetic lambda$layoutChildren$510(DLjava/lang/Integer;)Ljava/lang/Double;
    .locals 6

    .prologue
    .line 337
    move-wide v0, p0

    .local v0, "width":D
    move-object v2, p2

    .local v2, "i":Ljava/lang/Integer;
    move-wide v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "width":D
    return-object v0
.end method

.method private static synthetic lambda$static$509(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "n":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/layout/StackPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "n":Ljavafx/scene/Node;
    return-object v0
.end method

.method public static setAlignment(Ljavafx/scene/Node;Ljavafx/geometry/Pos;)V
    .locals 5

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    const-string v3, "stackpane-alignment"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/StackPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public static setMargin(Ljavafx/scene/Node;Ljavafx/geometry/Insets;)V
    .locals 5

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "child":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Insets;
    move-object v2, v0

    const-string v3, "stackpane-margin"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/StackPane;->setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    return-void
.end method


# virtual methods
.method public final alignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/StackPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 223
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/StackPane$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/StackPane$1;-><init>(Ljavafx/scene/layout/StackPane;Ljavafx/geometry/Pos;)V

    iput-object v2, v1, Ljavafx/scene/layout/StackPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    .line 245
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/StackPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/StackPane;
    return-object v0
.end method

.method protected computeMinHeight(D)D
    .locals 13

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-wide v1, p1

    .local v1, "width":D
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getManagedChildren()Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 288
    .local v3, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v4

    move-object v6, v0

    move-object v7, v3

    sget-object v8, Ljavafx/scene/layout/StackPane;->marginAccessor:Ljavafx/util/Callback;

    move-object v9, v0

    .line 289
    invoke-direct {v9}, Ljavafx/scene/layout/StackPane;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v9

    move-wide v10, v1

    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/layout/StackPane;->computeMaxMinAreaHeight(Ljava/util/List;Ljavafx/util/Callback;Ljavafx/geometry/VPos;D)D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v0

    .line 290
    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "this":Ljavafx/scene/layout/StackPane;
    return-wide v0
.end method

.method protected computeMinWidth(D)D
    .locals 13

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-wide v1, p1

    .local v1, "height":D
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getManagedChildren()Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    .line 281
    .local v3, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v4

    move-object v6, v0

    move-object v7, v3

    sget-object v8, Ljavafx/scene/layout/StackPane;->marginAccessor:Ljavafx/util/Callback;

    move-wide v9, v1

    const/4 v11, 0x1

    .line 282
    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/layout/StackPane;->computeMaxMinAreaWidth(Ljava/util/List;Ljavafx/util/Callback;DZ)D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v0

    .line 283
    invoke-virtual {v6}, Ljavafx/scene/layout/StackPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v0, v4

    .end local v0    # "this":Ljavafx/scene/layout/StackPane;
    return-wide v0
.end method

.method protected computePrefHeight(D)D
    .locals 15

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getManagedChildren()Ljava/util/List;

    move-result-object v5

    move-object v3, v5

    .line 304
    .local v3, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v5

    move-object v4, v5

    .line 305
    .local v4, "padding":Ljavafx/geometry/Insets;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v5

    move-object v7, v0

    move-object v8, v3

    sget-object v9, Ljavafx/scene/layout/StackPane;->marginAccessor:Ljavafx/util/Callback;

    move-wide v10, v1

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 307
    :goto_0
    move-object v12, v0

    .line 308
    invoke-direct {v12}, Ljavafx/scene/layout/StackPane;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v12

    .line 306
    invoke-virtual/range {v7 .. v12}, Ljavafx/scene/layout/StackPane;->computeMaxPrefAreaHeight(Ljava/util/List;Ljavafx/util/Callback;DLjavafx/geometry/VPos;)D

    move-result-wide v7

    add-double/2addr v5, v7

    move-object v7, v4

    .line 309
    invoke-virtual {v7}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v7

    add-double/2addr v5, v7

    move-wide v0, v5

    .end local v0    # "this":Ljavafx/scene/layout/StackPane;
    return-wide v0

    .line 305
    .restart local v0    # "this":Ljavafx/scene/layout/StackPane;
    :cond_0
    move-wide v10, v1

    move-object v12, v4

    .line 307
    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v12

    sub-double/2addr v10, v12

    goto :goto_0
.end method

.method protected computePrefWidth(D)D
    .locals 15

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-wide/from16 v1, p1

    .local v1, "height":D
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getManagedChildren()Ljava/util/List;

    move-result-object v5

    move-object v3, v5

    .line 295
    .local v3, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v5

    move-object v4, v5

    .line 296
    .local v4, "padding":Ljavafx/geometry/Insets;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v5

    move-object v7, v0

    move-object v8, v3

    sget-object v9, Ljavafx/scene/layout/StackPane;->marginAccessor:Ljavafx/util/Callback;

    move-wide v10, v1

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 298
    :goto_0
    const/4 v12, 0x1

    .line 297
    invoke-virtual/range {v7 .. v12}, Ljavafx/scene/layout/StackPane;->computeMaxPrefAreaWidth(Ljava/util/List;Ljavafx/util/Callback;DZ)D

    move-result-wide v7

    add-double/2addr v5, v7

    move-object v7, v4

    .line 299
    invoke-virtual {v7}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v7

    add-double/2addr v5, v7

    move-wide v0, v5

    .end local v0    # "this":Ljavafx/scene/layout/StackPane;
    return-wide v0

    .line 296
    .restart local v0    # "this":Ljavafx/scene/layout/StackPane;
    :cond_0
    move-wide v10, v1

    move-object v12, v4

    .line 298
    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v12

    sub-double/2addr v10, v12

    goto :goto_0
.end method

.method public final getAlignment()Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/StackPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/StackPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/StackPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/StackPane;->alignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    goto :goto_0
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 7

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/layout/StackPane;->biasDirty:Z

    if-eqz v5, :cond_1

    .line 263
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/layout/StackPane;->bias:Ljavafx/geometry/Orientation;

    .line 264
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getManagedChildren()Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 265
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v3, v5

    .line 266
    .local v3, "child":Ljavafx/scene/Node;
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v5

    move-object v4, v5

    .line 267
    .local v4, "contentBias":Ljavafx/geometry/Orientation;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 268
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/layout/StackPane;->bias:Ljavafx/geometry/Orientation;

    .line 269
    move-object v5, v4

    sget-object v6, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v5, v6, :cond_2

    .line 270
    .line 274
    .end local v3    # "child":Ljavafx/scene/Node;
    .end local v4    # "contentBias":Ljavafx/geometry/Orientation;
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/layout/StackPane;->biasDirty:Z

    .line 276
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/layout/StackPane;->bias:Ljavafx/geometry/Orientation;

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/layout/StackPane;
    return-object v0

    .line 273
    .restart local v0    # "this":Ljavafx/scene/layout/StackPane;
    .restart local v1    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .restart local v3    # "child":Ljavafx/scene/Node;
    .restart local v4    # "contentBias":Ljavafx/geometry/Orientation;
    :cond_2
    goto :goto_0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    invoke-static {}, Ljavafx/scene/layout/StackPane;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/StackPane;
    return-object v0
.end method

.method protected layoutChildren()V
    .locals 45

    .prologue
    .line 323
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/StackPane;
    move-object/from16 v30, v3

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Ljavafx/scene/layout/StackPane;->performingLayout:Z

    .line 324
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/StackPane;->getManagedChildren()Ljava/util/List;

    move-result-object v30

    move-object/from16 v4, v30

    .line 325
    .local v4, "managed":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v30}, Ljavafx/scene/layout/StackPane;->getAlignmentInternal()Ljavafx/geometry/Pos;

    move-result-object v30

    move-object/from16 v5, v30

    .line 326
    .local v5, "align":Ljavafx/geometry/Pos;
    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v30

    move-object/from16 v6, v30

    .line 327
    .local v6, "alignHpos":Ljavafx/geometry/HPos;
    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v30

    move-object/from16 v7, v30

    .line 328
    .local v7, "alignVpos":Ljavafx/geometry/VPos;
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v30

    move-wide/from16 v8, v30

    .line 329
    .local v8, "width":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v30

    move-wide/from16 v10, v30

    .line 330
    .local v10, "height":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/StackPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v30

    move-wide/from16 v12, v30

    .line 331
    .local v12, "top":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/StackPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v30

    move-wide/from16 v14, v30

    .line 332
    .local v14, "right":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/StackPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v30

    move-wide/from16 v16, v30

    .line 333
    .local v16, "left":D
    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/layout/StackPane;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v30

    move-wide/from16 v18, v30

    .line 334
    .local v18, "bottom":D
    move-wide/from16 v30, v8

    move-wide/from16 v32, v16

    sub-double v30, v30, v32

    move-wide/from16 v32, v14

    sub-double v30, v30, v32

    move-wide/from16 v20, v30

    .line 335
    .local v20, "contentWidth":D
    move-wide/from16 v30, v10

    move-wide/from16 v32, v12

    sub-double v30, v30, v32

    move-wide/from16 v32, v18

    sub-double v30, v30, v32

    move-wide/from16 v22, v30

    .line 336
    .local v22, "contentHeight":D
    move-object/from16 v30, v7

    sget-object v31, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_0

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    sget-object v32, Ljavafx/scene/layout/StackPane;->marginAccessor:Ljavafx/util/Callback;

    move-wide/from16 v33, v8

    invoke-static/range {v33 .. v34}, Ljavafx/scene/layout/StackPane$$Lambda$1;->lambdaFactory$(D)Ljava/util/function/Function;

    move-result-object v33

    move-wide/from16 v34, v22

    const/16 v36, 0x1

    .line 337
    invoke-virtual/range {v30 .. v36}, Ljavafx/scene/layout/StackPane;->getAreaBaselineOffset(Ljava/util/List;Ljavafx/util/Callback;Ljava/util/function/Function;DZ)D

    move-result-wide v30

    :goto_0
    move-wide/from16 v24, v30

    .line 339
    .local v24, "baselineOffset":D
    const/16 v30, 0x0

    move/from16 v26, v30

    .local v26, "i":I
    move-object/from16 v30, v4

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v27, v30

    .local v27, "size":I
    :goto_1
    move/from16 v30, v26

    move/from16 v31, v27

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    .line 340
    move-object/from16 v30, v4

    move/from16 v31, v26

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljavafx/scene/Node;

    move-object/from16 v28, v30

    .line 341
    .local v28, "child":Ljavafx/scene/Node;
    move-object/from16 v30, v28

    invoke-static/range {v30 .. v30}, Ljavafx/scene/layout/StackPane;->getAlignment(Ljavafx/scene/Node;)Ljavafx/geometry/Pos;

    move-result-object v30

    move-object/from16 v29, v30

    .line 342
    .local v29, "childAlignment":Ljavafx/geometry/Pos;
    move-object/from16 v30, v3

    move-object/from16 v31, v28

    move-wide/from16 v32, v16

    move-wide/from16 v34, v12

    move-wide/from16 v36, v20

    move-wide/from16 v38, v22

    move-wide/from16 v40, v24

    move-object/from16 v42, v28

    .line 344
    invoke-static/range {v42 .. v42}, Ljavafx/scene/layout/StackPane;->getMargin(Ljavafx/scene/Node;)Ljavafx/geometry/Insets;

    move-result-object v42

    move-object/from16 v43, v29

    if-eqz v43, :cond_1

    move-object/from16 v43, v29

    .line 345
    invoke-virtual/range {v43 .. v43}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v43

    :goto_2
    move-object/from16 v44, v29

    if-eqz v44, :cond_2

    move-object/from16 v44, v29

    .line 346
    invoke-virtual/range {v44 .. v44}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v44

    .line 342
    :goto_3
    invoke-virtual/range {v30 .. v44}, Ljavafx/scene/layout/StackPane;->layoutInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/Insets;Ljavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 339
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 337
    .end local v24    # "baselineOffset":D
    .end local v26    # "i":I
    .end local v27    # "size":I
    .end local v28    # "child":Ljavafx/scene/Node;
    .end local v29    # "childAlignment":Ljavafx/geometry/Pos;
    :cond_0
    const-wide/16 v30, 0x0

    goto :goto_0

    .line 345
    .restart local v24    # "baselineOffset":D
    .restart local v26    # "i":I
    .restart local v27    # "size":I
    .restart local v28    # "child":Ljavafx/scene/Node;
    .restart local v29    # "childAlignment":Ljavafx/geometry/Pos;
    :cond_1
    move-object/from16 v43, v6

    goto :goto_2

    .line 346
    :cond_2
    move-object/from16 v44, v7

    goto :goto_3

    .line 348
    .end local v28    # "child":Ljavafx/scene/Node;
    .end local v29    # "childAlignment":Ljavafx/geometry/Pos;
    :cond_3
    move-object/from16 v30, v3

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Ljavafx/scene/layout/StackPane;->performingLayout:Z

    .line 349
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/StackPane;->performingLayout:Z

    if-eqz v1, :cond_0

    .line 315
    .line 320
    :goto_0
    return-void

    .line 317
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/layout/StackPane;->biasDirty:Z

    .line 318
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/layout/StackPane;->bias:Ljavafx/geometry/Orientation;

    .line 319
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Pane;->requestLayout()V

    .line 320
    goto :goto_0
.end method

.method public final setAlignment(Ljavafx/geometry/Pos;)V
    .locals 4

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/StackPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method
