.class public final Lcom/sun/javafx/css/CompoundSelector;
.super Lcom/sun/javafx/css/Selector;
.source "CompoundSelector.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private hash:I

.field private final relationships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Combinator;",
            ">;"
        }
    .end annotation
.end field

.field private final selectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/SimpleSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/sun/javafx/css/CompoundSelector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/css/CompoundSelector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/CompoundSelector;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/SimpleSelector;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Combinator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object v1, p1

    .local v1, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/SimpleSelector;>;"
    move-object v2, p2

    .local v2, "relationships":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Combinator;>;"
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/css/Selector;-><init>()V

    .line 253
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/javafx/css/CompoundSelector;->hash:I

    .line 85
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 87
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    :goto_0
    iput-object v4, v3, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    .line 89
    move-object v3, v0

    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    .line 91
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    :goto_1
    iput-object v4, v3, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    .line 93
    return-void

    .line 87
    :cond_0
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 91
    :cond_1
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1
.end method

.method private applies(Ljavafx/css/Styleable;I[Ljava/util/Set;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "I[",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move v2, p2

    .local v2, "index":I
    move-object/from16 v3, p3

    .local v3, "triggerStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move/from16 v4, p4

    .local v4, "depth":I
    move v8, v2

    if-gez v8, :cond_0

    const/4 v8, 0x0

    move v0, v8

    .line 200
    .end local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    :goto_0
    return v0

    .line 168
    .restart local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    move v9, v2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/SimpleSelector;

    move-object v9, v1

    move-object v10, v3

    move v11, v4

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/javafx/css/SimpleSelector;->applies(Ljavafx/css/Styleable;[Ljava/util/Set;I)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 172
    :cond_1
    move v8, v2

    if-nez v8, :cond_2

    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 182
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/Combinator;

    move-object v5, v8

    .line 183
    .local v5, "relationship":Lcom/sun/javafx/css/Combinator;
    move-object v8, v5

    sget-object v9, Lcom/sun/javafx/css/Combinator;->CHILD:Lcom/sun/javafx/css/Combinator;

    if-ne v8, v9, :cond_4

    .line 184
    move-object v8, v1

    invoke-interface {v8}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v8

    move-object v6, v8

    .line 185
    .local v6, "parent":Ljavafx/css/Styleable;
    move-object v8, v6

    if-nez v8, :cond_3

    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 188
    :cond_3
    move-object v8, v0

    move-object v9, v6

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v3

    add-int/lit8 v4, v4, 0x1

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/javafx/css/CompoundSelector;->applies(Ljavafx/css/Styleable;I[Ljava/util/Set;I)Z

    move-result v8

    move v0, v8

    goto :goto_0

    .line 190
    .end local v6    # "parent":Ljavafx/css/Styleable;
    :cond_4
    move-object v8, v1

    invoke-interface {v8}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v8

    move-object v6, v8

    .line 191
    .restart local v6    # "parent":Ljavafx/css/Styleable;
    :goto_1
    move-object v8, v6

    if-eqz v8, :cond_6

    .line 192
    move-object v8, v0

    move-object v9, v6

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v3

    add-int/lit8 v4, v4, 0x1

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/javafx/css/CompoundSelector;->applies(Ljavafx/css/Styleable;I[Ljava/util/Set;I)Z

    move-result v8

    move v7, v8

    .line 195
    .local v7, "answer":Z
    move v8, v7

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 197
    :cond_5
    move-object v8, v6

    invoke-interface {v8}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v8

    move-object v6, v8

    .line 198
    goto :goto_1

    .line 200
    .end local v7    # "answer":Z
    :cond_6
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method public static readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/CompoundSelector;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    move v0, p0

    .local v0, "bssVersion":I
    move-object v1, p1

    .local v1, "is":Ljava/io/DataInputStream;
    move-object/from16 v2, p2

    .local v2, "strings":[Ljava/lang/String;
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    move v3, v9

    .line 315
    .local v3, "nSelectors":I
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v9

    .line 316
    .local v4, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/SimpleSelector;>;"
    const/4 v9, 0x0

    move v5, v9

    .local v5, "n":I
    :goto_0
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_0

    .line 317
    move-object v9, v4

    move v10, v0

    move-object v11, v1

    move-object v12, v2

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/css/Selector;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/Selector;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/css/SimpleSelector;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 316
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 320
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    move v5, v9

    .line 322
    .local v5, "nRelationships":I
    new-instance v9, Ljava/util/ArrayList;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v9

    .line 323
    .local v6, "relationships":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Combinator;>;"
    const/4 v9, 0x0

    move v7, v9

    .local v7, "n":I
    :goto_1
    move v9, v7

    move v10, v5

    if-ge v9, v10, :cond_4

    .line 324
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    move v8, v9

    .line 325
    .local v8, "ordinal":I
    move v9, v8

    sget-object v10, Lcom/sun/javafx/css/Combinator;->CHILD:Lcom/sun/javafx/css/Combinator;

    invoke-virtual {v10}, Lcom/sun/javafx/css/Combinator;->ordinal()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 326
    move-object v9, v6

    sget-object v10, Lcom/sun/javafx/css/Combinator;->CHILD:Lcom/sun/javafx/css/Combinator;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 323
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 327
    :cond_1
    move v9, v8

    sget-object v10, Lcom/sun/javafx/css/Combinator;->DESCENDANT:Lcom/sun/javafx/css/Combinator;

    invoke-virtual {v10}, Lcom/sun/javafx/css/Combinator;->ordinal()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 328
    move-object v9, v6

    sget-object v10, Lcom/sun/javafx/css/Combinator;->DESCENDANT:Lcom/sun/javafx/css/Combinator;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    .line 330
    :cond_2
    sget-boolean v9, Lcom/sun/javafx/css/CompoundSelector;->$assertionsDisabled:Z

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/AssertionError;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error deserializing CompoundSelector: Combinator = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 331
    :cond_3
    move-object v9, v6

    sget-object v10, Lcom/sun/javafx/css/Combinator;->DESCENDANT:Lcom/sun/javafx/css/Combinator;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_2

    .line 334
    .end local v8    # "ordinal":I
    :cond_4
    new-instance v9, Lcom/sun/javafx/css/CompoundSelector;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v4

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/CompoundSelector;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object v0, v9

    .end local v0    # "bssVersion":I
    return-object v0
.end method

.method private stateMatches(Ljavafx/css/Styleable;Ljava/util/Set;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, p2

    .local v2, "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move v3, p3

    .local v3, "index":I
    move v7, v3

    if-gez v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    .line 250
    .end local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    :goto_0
    return v0

    .line 214
    .restart local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/SimpleSelector;

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/css/SimpleSelector;->stateMatches(Ljavafx/css/Styleable;Ljava/util/Set;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 218
    :cond_1
    move v7, v3

    if-nez v7, :cond_2

    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 228
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/Combinator;

    move-object v4, v7

    .line 229
    .local v4, "relationship":Lcom/sun/javafx/css/Combinator;
    move-object v7, v4

    sget-object v8, Lcom/sun/javafx/css/Combinator;->CHILD:Lcom/sun/javafx/css/Combinator;

    if-ne v7, v8, :cond_5

    .line 230
    move-object v7, v1

    invoke-interface {v7}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v7

    move-object v5, v7

    .line 231
    .local v5, "parent":Ljavafx/css/Styleable;
    move-object v7, v5

    if-nez v7, :cond_3

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 232
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/SimpleSelector;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/css/SimpleSelector;->applies(Ljavafx/css/Styleable;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 235
    move-object v7, v5

    invoke-interface {v7}, Ljavafx/css/Styleable;->getPseudoClassStates()Ljavafx/collections/ObservableSet;

    move-result-object v7

    move-object v6, v7

    .line 236
    .local v6, "parentStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v7, v0

    move-object v8, v5

    move-object v9, v6

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/css/CompoundSelector;->stateMatches(Ljavafx/css/Styleable;Ljava/util/Set;I)Z

    move-result v7

    move v0, v7

    goto :goto_0

    .line 238
    .line 250
    .end local v6    # "parentStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    :cond_4
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 239
    .end local v5    # "parent":Ljavafx/css/Styleable;
    :cond_5
    move-object v7, v1

    invoke-interface {v7}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v7

    move-object v5, v7

    .line 240
    .restart local v5    # "parent":Ljavafx/css/Styleable;
    :goto_1
    move-object v7, v5

    if-eqz v7, :cond_4

    .line 241
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/SimpleSelector;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/css/SimpleSelector;->applies(Ljavafx/css/Styleable;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 242
    move-object v7, v5

    invoke-interface {v7}, Ljavafx/css/Styleable;->getPseudoClassStates()Ljavafx/collections/ObservableSet;

    move-result-object v7

    move-object v6, v7

    .line 243
    .restart local v6    # "parentStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v7, v0

    move-object v8, v5

    move-object v9, v6

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/css/CompoundSelector;->stateMatches(Ljavafx/css/Styleable;Ljava/util/Set;I)Z

    move-result v7

    move v0, v7

    goto/16 :goto_0

    .line 246
    .end local v6    # "parentStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    :cond_6
    move-object v7, v5

    invoke-interface {v7}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v7

    move-object v5, v7

    goto :goto_1
.end method


# virtual methods
.method public applies(Ljavafx/css/Styleable;)Z
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sun/javafx/css/CompoundSelector;->applies(Ljavafx/css/Styleable;I[Ljava/util/Set;I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    return v0
.end method

.method applies(Ljavafx/css/Styleable;[Ljava/util/Set;I)Z
    .locals 15
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
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object/from16 v2, p2

    .local v2, "triggerStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move/from16 v3, p3

    .local v3, "depth":I
    sget-boolean v9, Lcom/sun/javafx/css/CompoundSelector;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    move-object v9, v2

    if-eqz v9, :cond_0

    move v9, v3

    move-object v10, v2

    array-length v10, v10

    if-lt v9, v10, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 126
    :cond_0
    move-object v9, v2

    if-eqz v9, :cond_1

    move-object v9, v2

    array-length v9, v9

    move v10, v3

    if-gt v9, v10, :cond_1

    .line 127
    const/4 v9, 0x0

    move v0, v9

    .line 159
    .end local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    :goto_0
    return v0

    .line 139
    .restart local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    :cond_1
    move-object v9, v2

    if-eqz v9, :cond_2

    move-object v9, v2

    array-length v9, v9

    new-array v9, v9, [Lcom/sun/javafx/css/PseudoClassState;

    :goto_1
    move-object v4, v9

    .line 142
    .local v4, "tempStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move-object v12, v4

    move v13, v3

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/javafx/css/CompoundSelector;->applies(Ljavafx/css/Styleable;I[Ljava/util/Set;I)Z

    move-result v9

    move v5, v9

    .line 144
    .local v5, "applies":Z
    move v9, v5

    if-eqz v9, :cond_4

    move-object v9, v4

    if-eqz v9, :cond_4

    .line 146
    const/4 v9, 0x0

    move v6, v9

    .local v6, "n":I
    :goto_2
    move v9, v6

    move-object v10, v2

    array-length v10, v10

    if-ge v9, v10, :cond_4

    .line 148
    move-object v9, v2

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 149
    .local v7, "pseudoClassOut":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    move-object v8, v9

    .line 151
    .local v8, "pseudoClassIn":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v9, v7

    if-eqz v9, :cond_3

    .line 152
    move-object v9, v7

    move-object v10, v8

    invoke-interface {v9, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v9

    .line 146
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 139
    .end local v4    # "tempStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .end local v5    # "applies":Z
    .end local v6    # "n":I
    .end local v7    # "pseudoClassOut":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .end local v8    # "pseudoClassIn":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 154
    .restart local v4    # "tempStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .restart local v5    # "applies":Z
    .restart local v6    # "n":I
    .restart local v7    # "pseudoClassOut":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .restart local v8    # "pseudoClassIn":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    :cond_3
    move-object v9, v2

    move v10, v6

    move-object v11, v8

    aput-object v11, v9, v10

    goto :goto_3

    .line 159
    .end local v6    # "n":I
    .end local v7    # "pseudoClassOut":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .end local v8    # "pseudoClassIn":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    :cond_4
    move v9, v5

    move v0, v9

    goto :goto_0
.end method

.method createMatch()Lcom/sun/javafx/css/Match;
    .locals 15

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    new-instance v8, Lcom/sun/javafx/css/PseudoClassState;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lcom/sun/javafx/css/PseudoClassState;-><init>()V

    move-object v1, v8

    .line 103
    .local v1, "allPseudoClasses":Lcom/sun/javafx/css/PseudoClassState;
    const/4 v8, 0x0

    move v2, v8

    .line 104
    .local v2, "idCount":I
    const/4 v8, 0x0

    move v3, v8

    .line 106
    .local v3, "styleClassCount":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "n":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v5, v8

    .local v5, "nMax":I
    :goto_0
    move v8, v4

    move v9, v5

    if-ge v8, v9, :cond_0

    .line 107
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/Selector;

    move-object v6, v8

    .line 108
    .local v6, "sel":Lcom/sun/javafx/css/Selector;
    move-object v8, v6

    invoke-virtual {v8}, Lcom/sun/javafx/css/Selector;->createMatch()Lcom/sun/javafx/css/Match;

    move-result-object v8

    move-object v7, v8

    .line 109
    .local v7, "match":Lcom/sun/javafx/css/Match;
    move-object v8, v1

    move-object v9, v7

    iget-object v9, v9, Lcom/sun/javafx/css/Match;->pseudoClasses:Lcom/sun/javafx/css/PseudoClassState;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/PseudoClassState;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .line 110
    move v8, v2

    move-object v9, v7

    iget v9, v9, Lcom/sun/javafx/css/Match;->idCount:I

    add-int/2addr v8, v9

    move v2, v8

    .line 111
    move v8, v3

    move-object v9, v7

    iget v9, v9, Lcom/sun/javafx/css/Match;->styleClassCount:I

    add-int/2addr v8, v9

    move v3, v8

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v6    # "sel":Lcom/sun/javafx/css/Selector;
    .end local v7    # "match":Lcom/sun/javafx/css/Match;
    :cond_0
    new-instance v8, Lcom/sun/javafx/css/Match;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move v13, v3

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/javafx/css/Match;-><init>(Lcom/sun/javafx/css/Selector;Lcom/sun/javafx/css/PseudoClassState;II)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 271
    const/4 v5, 0x0

    move v0, v5

    .line 287
    .end local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    :goto_0
    return v0

    .line 273
    .restart local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 274
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 276
    :cond_1
    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/css/CompoundSelector;

    move-object v2, v5

    .line 277
    .local v2, "other":Lcom/sun/javafx/css/CompoundSelector;
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 279
    :cond_2
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    .local v4, "max":I
    :goto_1
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_4

    .line 280
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/css/SimpleSelector;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/css/SimpleSelector;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 279
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 283
    :cond_4
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_5

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 284
    :cond_5
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    :goto_2
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_7

    .line 285
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/css/Combinator;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/css/Combinator;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 284
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 287
    :cond_7
    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0
.end method

.method public getRelationships()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Combinator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    return-object v0
.end method

.method public getSelectors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/SimpleSelector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/css/CompoundSelector;->hash:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 260
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v2, v3

    .local v2, "max":I
    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 261
    move-object v3, v0

    const/16 v4, 0x1f

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/css/CompoundSelector;->hash:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    move v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/css/SimpleSelector;

    invoke-virtual {v6}, Lcom/sun/javafx/css/SimpleSelector;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/css/CompoundSelector;->hash:I

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v2, v3

    :goto_1
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_1

    .line 263
    move-object v3, v0

    const/16 v4, 0x1f

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/css/CompoundSelector;->hash:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    move v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/css/Combinator;

    invoke-virtual {v6}, Lcom/sun/javafx/css/Combinator;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/2addr v4, v5

    iput v4, v3, Lcom/sun/javafx/css/CompoundSelector;->hash:I

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 265
    .end local v1    # "i":I
    .end local v2    # "max":I
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/css/CompoundSelector;->hash:I

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    return v0
.end method

.method public stateMatches(Ljavafx/css/Styleable;Ljava/util/Set;)Z
    .locals 8
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
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, p2

    .local v2, "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/css/CompoundSelector;->stateMatches(Ljavafx/css/Styleable;Ljava/util/Set;I)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 292
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 293
    const/4 v3, 0x1

    move v2, v3

    .local v2, "n":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 294
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 295
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/CompoundSelector;
    return-object v0
.end method

.method public final writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CompoundSelector;
    move-object v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object v2, p2

    .local v2, "stringStore":Lcom/sun/javafx/css/StringStore;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lcom/sun/javafx/css/Selector;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 304
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 305
    const/4 v4, 0x0

    move v3, v4

    .local v3, "n":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/CompoundSelector;->selectors:Ljava/util/List;

    move v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/css/SimpleSelector;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/css/SimpleSelector;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 307
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/CompoundSelector;->relationships:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/css/Combinator;

    invoke-virtual {v5}, Lcom/sun/javafx/css/Combinator;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 308
    :cond_1
    return-void
.end method
