.class public final Lcom/sun/javafx/css/SimpleSelector;
.super Lcom/sun/javafx/css/Selector;
.source "SimpleSelector.java"


# instance fields
.field private final id:Ljava/lang/String;

.field private final matchOnId:Z

.field private final matchOnName:Z

.field private final matchOnStyleClass:Z

.field private final name:Ljava/lang/String;

.field private final nodeOrientation:Ljavafx/geometry/NodeOrientation;

.field private final pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

.field private final styleClassSet:Lcom/sun/javafx/css/StyleClassSet;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "styleClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, "pseudoClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v4, p4

    .local v4, "id":Ljava/lang/String;
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/javafx/css/Selector;-><init>()V

    .line 148
    move-object v10, v0

    move-object v11, v1

    if-nez v11, :cond_1

    const-string v11, "*"

    :goto_0
    iput-object v11, v10, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    .line 151
    move-object v10, v0

    move-object v11, v1

    if-eqz v11, :cond_2

    const-string v11, ""

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "*"

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v10, Lcom/sun/javafx/css/SimpleSelector;->matchOnName:Z

    .line 153
    move-object v10, v0

    new-instance v11, Lcom/sun/javafx/css/StyleClassSet;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Lcom/sun/javafx/css/StyleClassSet;-><init>()V

    iput-object v11, v10, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    .line 155
    move-object v10, v2

    if-eqz v10, :cond_3

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    :goto_2
    move v5, v10

    .line 156
    .local v5, "nMax":I
    const/4 v10, 0x0

    move v6, v10

    .local v6, "n":I
    :goto_3
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_5

    .line 158
    move-object v10, v2

    move v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    .line 159
    .local v7, "styleClassName":Ljava/lang/String;
    move-object v10, v7

    if-eqz v10, :cond_0

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 156
    :cond_0
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 148
    .end local v5    # "nMax":I
    .end local v6    # "n":I
    .end local v7    # "styleClassName":Ljava/lang/String;
    :cond_1
    move-object v11, v1

    goto :goto_0

    .line 151
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 155
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 161
    .restart local v5    # "nMax":I
    .restart local v6    # "n":I
    .restart local v7    # "styleClassName":Ljava/lang/String;
    :cond_4
    move-object v10, v7

    invoke-static {v10}, Lcom/sun/javafx/css/StyleClassSet;->getStyleClass(Ljava/lang/String;)Lcom/sun/javafx/css/StyleClass;

    move-result-object v10

    move-object v8, v10

    .line 162
    .local v8, "styleClass":Lcom/sun/javafx/css/StyleClass;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    move-object v11, v8

    invoke-virtual {v10, v11}, Lcom/sun/javafx/css/StyleClassSet;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_4

    .line 165
    .end local v7    # "styleClassName":Ljava/lang/String;
    .end local v8    # "styleClass":Lcom/sun/javafx/css/StyleClass;
    :cond_5
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v11}, Lcom/sun/javafx/css/StyleClassSet;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, v10, Lcom/sun/javafx/css/SimpleSelector;->matchOnStyleClass:Z

    .line 167
    move-object v10, v0

    new-instance v11, Lcom/sun/javafx/css/PseudoClassState;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Lcom/sun/javafx/css/PseudoClassState;-><init>()V

    iput-object v11, v10, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    .line 169
    move-object v10, v3

    if-eqz v10, :cond_8

    move-object v10, v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    :goto_6
    move v5, v10

    .line 171
    sget-object v10, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    move-object v6, v10

    .line 172
    .local v6, "dir":Ljavafx/geometry/NodeOrientation;
    const/4 v10, 0x0

    move v7, v10

    .local v7, "n":I
    :goto_7
    move v10, v7

    move v11, v5

    if-ge v10, v11, :cond_c

    .line 174
    move-object v10, v3

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v8, v10

    .line 175
    .local v8, "pclass":Ljava/lang/String;
    move-object v10, v8

    if-eqz v10, :cond_6

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 172
    :cond_6
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 165
    .end local v7    # "n":I
    .end local v8    # "pclass":Ljava/lang/String;
    .local v6, "n":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    .line 169
    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    .line 178
    .local v6, "dir":Ljavafx/geometry/NodeOrientation;
    .restart local v7    # "n":I
    .restart local v8    # "pclass":Ljava/lang/String;
    :cond_9
    const-string v10, "dir("

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v13, v8

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual/range {v10 .. v15}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 179
    const-string v10, "dir(rtl)"

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    move v9, v10

    .line 180
    .local v9, "rtl":Z
    move v10, v9

    if-eqz v10, :cond_a

    sget-object v10, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    :goto_9
    move-object v6, v10

    .line 181
    goto :goto_8

    .line 180
    :cond_a
    sget-object v10, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    goto :goto_9

    .line 184
    .end local v9    # "rtl":Z
    :cond_b
    move-object v10, v8

    invoke-static {v10}, Lcom/sun/javafx/css/PseudoClassState;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v10

    move-object v9, v10

    .line 185
    .local v9, "pseudoClass":Ljavafx/css/PseudoClass;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    move-object v11, v9

    invoke-virtual {v10, v11}, Lcom/sun/javafx/css/PseudoClassState;->add(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_8

    .line 188
    .end local v8    # "pclass":Ljava/lang/String;
    .end local v9    # "pseudoClass":Ljavafx/css/PseudoClass;
    :cond_c
    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Lcom/sun/javafx/css/SimpleSelector;->nodeOrientation:Ljavafx/geometry/NodeOrientation;

    .line 189
    move-object v10, v0

    move-object v11, v4

    if-nez v11, :cond_d

    const-string v11, ""

    :goto_a
    iput-object v11, v10, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    .line 191
    move-object v10, v0

    move-object v11, v4

    if-eqz v11, :cond_e

    const-string v11, ""

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    const/4 v11, 0x1

    :goto_b
    iput-boolean v11, v10, Lcom/sun/javafx/css/SimpleSelector;->matchOnId:Z

    .line 193
    return-void

    .line 189
    :cond_d
    move-object v11, v4

    goto :goto_a

    .line 191
    :cond_e
    const/4 v11, 0x0

    goto :goto_b
.end method

.method private matchStyleClasses(Lcom/sun/javafx/css/StyleClassSet;)Z
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v1, p1

    .local v1, "otherStyleClasses":Lcom/sun/javafx/css/StyleClassSet;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/StyleClassSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return v0
.end method

.method static readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/SimpleSelector;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    move/from16 v0, p0

    .local v0, "bssVersion":I
    move-object/from16 v1, p1

    .local v1, "is":Ljava/io/DataInputStream;
    move-object/from16 v2, p2

    .local v2, "strings":[Ljava/lang/String;
    move-object v10, v2

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    aget-object v10, v10, v11

    move-object v3, v10

    .line 391
    .local v3, "name":Ljava/lang/String;
    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    move v4, v10

    .line 392
    .local v4, "nStyleClasses":I
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v10

    .line 393
    .local v5, "styleClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    move v6, v10

    .local v6, "n":I
    :goto_0
    move v10, v6

    move v11, v4

    if-ge v10, v11, :cond_0

    .line 394
    move-object v10, v5

    move-object v11, v2

    move-object v12, v1

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readShort()S

    move-result v12

    aget-object v11, v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 393
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 396
    :cond_0
    move-object v10, v2

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    aget-object v10, v10, v11

    move-object v6, v10

    .line 397
    .local v6, "id":Ljava/lang/String;
    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    move v7, v10

    .line 398
    .local v7, "nPseudoclasses":I
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v10

    .line 399
    .local v8, "pseudoclasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    move v9, v10

    .local v9, "n":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_1

    .line 400
    move-object v10, v8

    move-object v11, v2

    move-object v12, v1

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readShort()S

    move-result v12

    aget-object v11, v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 399
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 402
    :cond_1
    new-instance v10, Lcom/sun/javafx/css/SimpleSelector;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v3

    move-object v13, v5

    move-object v14, v8

    move-object v15, v6

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/sun/javafx/css/SimpleSelector;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v10

    .end local v0    # "bssVersion":I
    return-object v0
.end method


# virtual methods
.method public applies(Ljavafx/css/Styleable;)Z
    .locals 11

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/SimpleSelector;->nodeOrientation:Ljavafx/geometry/NodeOrientation;

    sget-object v9, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    if-eq v8, v9, :cond_2

    move-object v8, v1

    instance-of v8, v8, Ljavafx/scene/Node;

    if-eqz v8, :cond_2

    .line 207
    move-object v8, v1

    check-cast v8, Ljavafx/scene/Node;

    move-object v2, v8

    .line 208
    .local v2, "node":Ljavafx/scene/Node;
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/Node;->getNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v8

    move-object v3, v8

    .line 210
    .local v3, "orientation":Ljavafx/geometry/NodeOrientation;
    move-object v8, v3

    sget-object v9, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    if-ne v8, v9, :cond_1

    move-object v8, v2

    .line 211
    invoke-virtual {v8}, Ljavafx/scene/Node;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/SimpleSelector;->nodeOrientation:Ljavafx/geometry/NodeOrientation;

    if-eq v8, v9, :cond_2

    .line 214
    :cond_0
    const/4 v8, 0x0

    move v0, v8

    .line 253
    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    .end local v2    # "node":Ljavafx/scene/Node;
    .end local v3    # "orientation":Ljavafx/geometry/NodeOrientation;
    :goto_0
    return v0

    .line 211
    .restart local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    .restart local v2    # "node":Ljavafx/scene/Node;
    .restart local v3    # "orientation":Ljavafx/geometry/NodeOrientation;
    :cond_1
    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/SimpleSelector;->nodeOrientation:Ljavafx/geometry/NodeOrientation;

    if-ne v8, v9, :cond_0

    .line 221
    .end local v2    # "node":Ljavafx/scene/Node;
    .end local v3    # "orientation":Ljavafx/geometry/NodeOrientation;
    :cond_2
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/css/SimpleSelector;->matchOnId:Z

    if-eqz v8, :cond_3

    .line 222
    move-object v8, v1

    invoke-interface {v8}, Ljavafx/css/Styleable;->getId()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 223
    .local v2, "otherId":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move v3, v8

    .line 224
    .local v3, "idMatch":Z
    move v8, v3

    if-nez v8, :cond_3

    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 230
    .end local v2    # "otherId":Ljava/lang/String;
    .end local v3    # "idMatch":Z
    :cond_3
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/css/SimpleSelector;->matchOnName:Z

    if-eqz v8, :cond_4

    .line 231
    move-object v8, v1

    invoke-interface {v8}, Ljavafx/css/Styleable;->getTypeSelector()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 232
    .local v2, "otherName":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move v3, v8

    .line 233
    .local v3, "classMatch":Z
    move v8, v3

    if-nez v8, :cond_4

    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 236
    .end local v2    # "otherName":Ljava/lang/String;
    .end local v3    # "classMatch":Z
    :cond_4
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/css/SimpleSelector;->matchOnStyleClass:Z

    if-eqz v8, :cond_8

    .line 238
    new-instance v8, Lcom/sun/javafx/css/StyleClassSet;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Lcom/sun/javafx/css/StyleClassSet;-><init>()V

    move-object v2, v8

    .line 239
    .local v2, "otherStyleClassSet":Lcom/sun/javafx/css/StyleClassSet;
    move-object v8, v1

    invoke-interface {v8}, Ljavafx/css/Styleable;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v3, v8

    .line 240
    .local v3, "styleClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    move v4, v8

    .local v4, "n":I
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v5, v8

    .local v5, "nMax":I
    :goto_1
    move v8, v4

    move v9, v5

    if-ge v8, v9, :cond_7

    .line 242
    move-object v8, v3

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 243
    .local v6, "styleClassName":Ljava/lang/String;
    move-object v8, v6

    if-eqz v8, :cond_5

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 240
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    :cond_6
    move-object v8, v6

    invoke-static {v8}, Lcom/sun/javafx/css/StyleClassSet;->getStyleClass(Ljava/lang/String;)Lcom/sun/javafx/css/StyleClass;

    move-result-object v8

    move-object v7, v8

    .line 246
    .local v7, "styleClass":Lcom/sun/javafx/css/StyleClass;
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/StyleClassSet;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_2

    .line 249
    .end local v6    # "styleClassName":Ljava/lang/String;
    .end local v7    # "styleClass":Lcom/sun/javafx/css/StyleClass;
    :cond_7
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/SimpleSelector;->matchStyleClasses(Lcom/sun/javafx/css/StyleClassSet;)Z

    move-result v8

    move v4, v8

    .line 250
    .local v4, "styleClassMatch":Z
    move v8, v4

    if-nez v8, :cond_8

    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    .line 253
    .end local v2    # "otherStyleClassSet":Lcom/sun/javafx/css/StyleClassSet;
    .end local v3    # "styleClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "styleClassMatch":Z
    .end local v5    # "nMax":I
    :cond_8
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_0
.end method

.method applies(Ljavafx/css/Styleable;[Ljava/util/Set;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "[",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, p2

    .local v2, "pseudoClasses":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move v3, p3

    .local v3, "depth":I
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/css/SimpleSelector;->applies(Ljavafx/css/Styleable;)Z

    move-result v5

    move v4, v5

    .line 265
    .local v4, "applies":Z
    move v5, v4

    if-eqz v5, :cond_1

    move-object v5, v2

    if-eqz v5, :cond_1

    move v5, v3

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 267
    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    if-nez v5, :cond_0

    .line 268
    move-object v5, v2

    move v6, v3

    new-instance v7, Lcom/sun/javafx/css/PseudoClassState;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Lcom/sun/javafx/css/PseudoClassState;-><init>()V

    aput-object v7, v5, v6

    .line 271
    :cond_0
    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 274
    :cond_1
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return v0
.end method

.method createMatch()Lcom/sun/javafx/css/Match;
    .locals 10

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/css/SimpleSelector;->matchOnId:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 197
    .local v1, "idCount":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v3}, Lcom/sun/javafx/css/StyleClassSet;->size()I

    move-result v3

    move v2, v3

    .line 198
    .local v2, "styleClassCount":I
    new-instance v3, Lcom/sun/javafx/css/Match;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/css/Match;-><init>(Lcom/sun/javafx/css/Selector;Lcom/sun/javafx/css/PseudoClassState;II)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return-object v0

    .line 196
    .end local v1    # "idCount":I
    .end local v2    # "styleClassCount":I
    .restart local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 302
    const/4 v3, 0x0

    move v0, v3

    .line 321
    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    :goto_0
    return v0

    .line 304
    .restart local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 305
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 307
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/SimpleSelector;

    move-object v2, v3

    .line 308
    .local v2, "other":Lcom/sun/javafx/css/SimpleSelector;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 309
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 308
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    if-nez v3, :cond_6

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 312
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 311
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 314
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/css/StyleClassSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 315
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 317
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/css/PseudoClassState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 318
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 321
    :cond_9
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return-object v0
.end method

.method getNodeOrientation()Ljavafx/geometry/NodeOrientation;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SimpleSelector;->nodeOrientation:Ljavafx/geometry/NodeOrientation;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return-object v0
.end method

.method getPseudoClassStates()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return-object v0
.end method

.method public getPseudoclasses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 112
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    invoke-virtual {v3}, Lcom/sun/javafx/css/PseudoClassState;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 113
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/css/PseudoClass;>;"
    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/css/PseudoClass;

    invoke-virtual {v4}, Ljavafx/css/PseudoClass;->getPseudoClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 117
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->nodeOrientation:Ljavafx/geometry/NodeOrientation;

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_2

    .line 118
    move-object v3, v1

    const-string v4, "dir(rtl)"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 123
    :cond_1
    :goto_1
    move-object v3, v1

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return-object v0

    .line 119
    .restart local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->nodeOrientation:Ljavafx/geometry/NodeOrientation;

    sget-object v4, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_1

    .line 120
    move-object v3, v1

    const-string v4, "dir(ltr)"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method

.method getStyleClassSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/javafx/css/StyleClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return-object v0
.end method

.method public getStyleClasses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 75
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v3}, Lcom/sun/javafx/css/StyleClassSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .line 76
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/css/StyleClass;>;"
    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/css/StyleClass;

    invoke-virtual {v4}, Lcom/sun/javafx/css/StyleClass;->getStyleClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 80
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    const/4 v2, 0x7

    move v1, v2

    .line 328
    .local v1, "hash":I
    const/16 v2, 0x1f

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    move v1, v2

    .line 329
    const/16 v2, 0x1f

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v4}, Lcom/sun/javafx/css/StyleClassSet;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    move v1, v2

    .line 330
    const/16 v2, 0x1f

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v4}, Lcom/sun/javafx/css/StyleClassSet;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    move v1, v2

    .line 331
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/16 v2, 0x1f

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    :goto_0
    move v1, v2

    .line 332
    const/16 v2, 0x1f

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    invoke-virtual {v4}, Lcom/sun/javafx/css/PseudoClassState;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    move v1, v2

    .line 333
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return v0

    .line 331
    .restart local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public stateMatches(Ljavafx/css/Styleable;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, p2

    .local v2, "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    invoke-interface {v3, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 340
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 342
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v5}, Lcom/sun/javafx/css/StyleClassSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    .line 343
    .local v2, "iter1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/css/StyleClass;>;"
    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 344
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/css/StyleClass;

    move-object v3, v5

    .line 345
    .local v3, "styleClass":Lcom/sun/javafx/css/StyleClass;
    move-object v5, v1

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/css/StyleClass;->getStyleClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 346
    goto :goto_1

    .line 341
    .end local v2    # "iter1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/css/StyleClass;>;"
    .end local v3    # "styleClass":Lcom/sun/javafx/css/StyleClass;
    :cond_0
    move-object v5, v1

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_0

    .line 347
    .restart local v2    # "iter1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/css/StyleClass;>;"
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 348
    move-object v5, v1

    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 349
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 351
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    invoke-virtual {v5}, Lcom/sun/javafx/css/PseudoClassState;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .line 352
    .local v3, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/css/PseudoClass;>;"
    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 353
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/css/PseudoClass;

    move-object v4, v5

    .line 354
    .local v4, "pseudoClass":Ljavafx/css/PseudoClass;
    move-object v5, v1

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/css/PseudoClass;->getPseudoClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 355
    goto :goto_2

    .line 357
    .end local v4    # "pseudoClass":Ljavafx/css/PseudoClass;
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/css/SimpleSelector;
    return-object v0
.end method

.method public final writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SimpleSelector;
    move-object v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object v2, p2

    .local v2, "stringStore":Lcom/sun/javafx/css/StringStore;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-super {v7, v8, v9}, Lcom/sun/javafx/css/Selector;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 364
    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/SimpleSelector;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 365
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v8}, Lcom/sun/javafx/css/StyleClassSet;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 366
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/SimpleSelector;->styleClassSet:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v7}, Lcom/sun/javafx/css/StyleClassSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    .line 367
    .local v3, "iter1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/css/StyleClass;>;"
    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 368
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/StyleClass;

    move-object v4, v7

    .line 369
    .local v4, "sc":Lcom/sun/javafx/css/StyleClass;
    move-object v7, v1

    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/css/StyleClass;->getStyleClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 370
    goto :goto_0

    .line 371
    .end local v4    # "sc":Lcom/sun/javafx/css/StyleClass;
    :cond_0
    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/SimpleSelector;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 372
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    invoke-virtual {v7}, Lcom/sun/javafx/css/PseudoClassState;->size()I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/SimpleSelector;->nodeOrientation:Ljavafx/geometry/NodeOrientation;

    sget-object v9, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-eq v8, v9, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/SimpleSelector;->nodeOrientation:Ljavafx/geometry/NodeOrientation;

    sget-object v9, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    if-ne v8, v9, :cond_2

    :cond_1
    const/4 v8, 0x1

    :goto_1
    add-int/2addr v7, v8

    move v4, v7

    .line 374
    .local v4, "pclassSize":I
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 375
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/SimpleSelector;->pseudoClassState:Lcom/sun/javafx/css/PseudoClassState;

    invoke-virtual {v7}, Lcom/sun/javafx/css/PseudoClassState;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    .line 376
    .local v5, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/css/PseudoClass;>;"
    :goto_2
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 377
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/css/PseudoClass;

    move-object v6, v7

    .line 378
    .local v6, "pc":Ljavafx/css/PseudoClass;
    move-object v7, v1

    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/css/PseudoClass;->getPseudoClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 379
    goto :goto_2

    .line 372
    .end local v4    # "pclassSize":I
    .end local v5    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/css/PseudoClass;>;"
    .end local v6    # "pc":Ljavafx/css/PseudoClass;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 380
    .restart local v4    # "pclassSize":I
    .restart local v5    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/css/PseudoClass;>;"
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/SimpleSelector;->nodeOrientation:Ljavafx/geometry/NodeOrientation;

    sget-object v8, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v7, v8, :cond_5

    .line 381
    move-object v7, v1

    move-object v8, v2

    const-string v9, "dir(rtl)"

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 385
    :cond_4
    :goto_3
    return-void

    .line 382
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/SimpleSelector;->nodeOrientation:Ljavafx/geometry/NodeOrientation;

    sget-object v8, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    if-ne v7, v8, :cond_4

    .line 383
    move-object v7, v1

    move-object v8, v2

    const-string v9, "dir(ltr)"

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3
.end method
