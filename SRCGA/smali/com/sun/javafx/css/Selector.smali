.class public abstract Lcom/sun/javafx/css/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/Selector$UniversalSelector;
    }
.end annotation


# static fields
.field private static final TYPE_COMPOUND:I = 0x2

.field private static final TYPE_SIMPLE:I = 0x1


# instance fields
.field private ordinal:I

.field private rule:Lcom/sun/javafx/css/Rule;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Selector;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/javafx/css/Selector;->ordinal:I

    return-void
.end method

.method public static createSelector(Ljava/lang/String;)Lcom/sun/javafx/css/Selector;
    .locals 26

    .prologue
    .line 106
    move-object/from16 v2, p0

    .local v2, "cssSelector":Ljava/lang/String;
    move-object/from16 v18, v2

    if-eqz v18, :cond_0

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1

    .line 107
    :cond_0
    const/16 v18, 0x0

    move-object/from16 v2, v18

    .line 179
    .end local v2    # "cssSelector":Ljava/lang/String;
    .local v3, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/SimpleSelector;>;"
    .local v4, "combinators":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Combinator;>;"
    .local v5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v6, "start":I
    .local v7, "end":I
    .local v8, "combinator":C
    .local v9, "i":I
    :goto_0
    return-object v2

    .line 111
    .end local v3    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/SimpleSelector;>;"
    .end local v4    # "combinators":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Combinator;>;"
    .end local v5    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "start":I
    .end local v7    # "end":I
    .end local v8    # "combinator":C
    .end local v9    # "i":I
    .restart local v2    # "cssSelector":Ljava/lang/String;
    :cond_1
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, v18

    .line 112
    .restart local v3    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/SimpleSelector;>;"
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, v18

    .line 113
    .restart local v4    # "combinators":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Combinator;>;"
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v18

    .line 114
    .restart local v5    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v18, 0x0

    move/from16 v6, v18

    .line 115
    .restart local v6    # "start":I
    const/16 v18, -0x1

    move/from16 v7, v18

    .line 116
    .restart local v7    # "end":I
    const/16 v18, 0x0

    move/from16 v8, v18

    .line 117
    .restart local v8    # "combinator":C
    const/16 v18, 0x0

    move/from16 v9, v18

    .restart local v9    # "i":I
    :goto_1
    move/from16 v18, v9

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 118
    move-object/from16 v18, v2

    move/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v10, v18

    .line 119
    .local v10, "ch":C
    move/from16 v18, v10

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 120
    move/from16 v18, v8

    if-nez v18, :cond_2

    .line 121
    move/from16 v18, v10

    move/from16 v8, v18

    .line 122
    move/from16 v18, v9

    move/from16 v7, v18

    .line 117
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 124
    :cond_3
    move/from16 v18, v10

    const/16 v19, 0x3e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 125
    move/from16 v18, v8

    if-nez v18, :cond_4

    move/from16 v18, v9

    move/from16 v7, v18

    .line 126
    :cond_4
    move/from16 v18, v10

    move/from16 v8, v18

    goto :goto_2

    .line 127
    :cond_5
    move/from16 v18, v8

    if-eqz v18, :cond_2

    .line 128
    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 129
    move/from16 v18, v9

    move/from16 v6, v18

    .line 130
    move-object/from16 v18, v4

    move/from16 v19, v8

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    sget-object v19, Lcom/sun/javafx/css/Combinator;->DESCENDANT:Lcom/sun/javafx/css/Combinator;

    :goto_3
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 131
    const/16 v18, 0x0

    move/from16 v8, v18

    goto :goto_2

    .line 130
    :cond_6
    sget-object v19, Lcom/sun/javafx/css/Combinator;->CHILD:Lcom/sun/javafx/css/Combinator;

    goto :goto_3

    .line 134
    .end local v10    # "ch":C
    :cond_7
    move-object/from16 v18, v5

    move-object/from16 v19, v2

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 136
    const/16 v18, 0x0

    move/from16 v9, v18

    :goto_4
    move/from16 v18, v9

    move-object/from16 v19, v5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 137
    move-object/from16 v18, v5

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v10, v18

    .line 138
    .local v10, "part":Ljava/lang/String;
    move-object/from16 v18, v10

    if-eqz v18, :cond_c

    move-object/from16 v18, v10

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 140
    move-object/from16 v18, v10

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v11, v18

    .line 141
    .local v11, "pseudoClassParts":[Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v18

    .line 142
    .local v12, "pseudoClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v18, 0x1

    move/from16 v13, v18

    .local v13, "j":I
    :goto_5
    move/from16 v18, v13

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 143
    move-object/from16 v18, v11

    move/from16 v19, v13

    aget-object v18, v18, v19

    if-eqz v18, :cond_8

    move-object/from16 v18, v11

    move/from16 v19, v13

    aget-object v18, v18, v19

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 144
    move-object/from16 v18, v12

    move-object/from16 v19, v11

    move/from16 v20, v13

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 142
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 150
    :cond_9
    move-object/from16 v18, v11

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v13, v18

    .line 152
    .local v13, "selector":Ljava/lang/String;
    move-object/from16 v18, v13

    const-string v19, "\\."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, v18

    .line 153
    .local v14, "styleClassParts":[Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v18

    .line 158
    .local v15, "styleClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v18, 0x1

    move/from16 v16, v18

    .local v16, "j":I
    :goto_6
    move/from16 v18, v16

    move-object/from16 v19, v14

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 159
    move-object/from16 v18, v14

    move/from16 v19, v16

    aget-object v18, v18, v19

    if-eqz v18, :cond_a

    move-object/from16 v18, v14

    move/from16 v19, v16

    aget-object v18, v18, v19

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 160
    move-object/from16 v18, v15

    move-object/from16 v19, v14

    move/from16 v20, v16

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 158
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 163
    :cond_b
    const/16 v18, 0x0

    move-object/from16 v16, v18

    .local v16, "name":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v17, v18

    .line 164
    .local v17, "id":Ljava/lang/String;
    move-object/from16 v18, v14

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 172
    :goto_7
    move-object/from16 v18, v3

    new-instance v19, Lcom/sun/javafx/css/SimpleSelector;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    move-object/from16 v21, v16

    move-object/from16 v22, v15

    move-object/from16 v23, v12

    move-object/from16 v24, v17

    invoke-direct/range {v20 .. v24}, Lcom/sun/javafx/css/SimpleSelector;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 136
    .end local v11    # "pseudoClassParts":[Ljava/lang/String;
    .end local v12    # "pseudoClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "selector":Ljava/lang/String;
    .end local v14    # "styleClassParts":[Ljava/lang/String;
    .end local v15    # "styleClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "id":Ljava/lang/String;
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 166
    .restart local v11    # "pseudoClassParts":[Ljava/lang/String;
    .restart local v12    # "pseudoClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "selector":Ljava/lang/String;
    .restart local v14    # "styleClassParts":[Ljava/lang/String;
    .restart local v15    # "styleClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v17    # "id":Ljava/lang/String;
    :cond_d
    move-object/from16 v18, v14

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x23

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 167
    move-object/from16 v18, v14

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v17, v18

    goto :goto_7

    .line 169
    :cond_e
    move-object/from16 v18, v14

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    goto :goto_7

    .line 176
    .end local v10    # "part":Ljava/lang/String;
    .end local v11    # "pseudoClassParts":[Ljava/lang/String;
    .end local v12    # "pseudoClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "selector":Ljava/lang/String;
    .end local v14    # "styleClassParts":[Ljava/lang/String;
    .end local v15    # "styleClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "id":Ljava/lang/String;
    :cond_f
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 177
    move-object/from16 v18, v3

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/css/Selector;

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 179
    :cond_10
    new-instance v18, Lcom/sun/javafx/css/CompoundSelector;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/css/CompoundSelector;-><init>(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v2, v18

    goto/16 :goto_0
.end method

.method public static getUniversalSelector()Lcom/sun/javafx/css/Selector;
    .locals 1

    .prologue
    .line 51
    # getter for: Lcom/sun/javafx/css/Selector$UniversalSelector;->INSTANCE:Lcom/sun/javafx/css/Selector;
    invoke-static {}, Lcom/sun/javafx/css/Selector$UniversalSelector;->access$000()Lcom/sun/javafx/css/Selector;

    move-result-object v0

    return-object v0
.end method

.method static readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/Selector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    move v0, p0

    .local v0, "bssVersion":I
    move-object v1, p1

    .local v1, "is":Ljava/io/DataInputStream;
    move-object v2, p2

    .local v2, "strings":[Ljava/lang/String;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    move v3, v4

    .line 99
    .local v3, "type":I
    move v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 100
    move v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/css/SimpleSelector;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/SimpleSelector;

    move-result-object v4

    move-object v0, v4

    .line 102
    .end local v0    # "bssVersion":I
    :goto_0
    return-object v0

    .restart local v0    # "bssVersion":I
    :cond_0
    move v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/css/CompoundSelector;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/CompoundSelector;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public abstract applies(Ljavafx/css/Styleable;)Z
.end method

.method abstract applies(Ljavafx/css/Styleable;[Ljava/util/Set;I)Z
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
.end method

.method abstract createMatch()Lcom/sun/javafx/css/Match;
.end method

.method getOrdinal()I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Selector;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/css/Selector;->ordinal:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Selector;
    return v0
.end method

.method getRule()Lcom/sun/javafx/css/Rule;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Selector;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Selector;->rule:Lcom/sun/javafx/css/Rule;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Selector;
    return-object v0
.end method

.method setOrdinal(I)V
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Selector;
    move v1, p1

    .local v1, "ordinal":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/css/Selector;->ordinal:I

    .line 65
    return-void
.end method

.method setRule(Lcom/sun/javafx/css/Rule;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Selector;
    move-object v1, p1

    .local v1, "rule":Lcom/sun/javafx/css/Rule;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/Selector;->rule:Lcom/sun/javafx/css/Rule;

    .line 57
    return-void
.end method

.method public abstract stateMatches(Ljavafx/css/Styleable;Ljava/util/Set;)Z
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
.end method

.method protected writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Selector;
    move-object v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object v2, p2

    .local v2, "stringStore":Lcom/sun/javafx/css/StringStore;
    move-object v3, v0

    instance-of v3, v3, Lcom/sun/javafx/css/SimpleSelector;

    if-eqz v3, :cond_0

    .line 90
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object v3, v1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0
.end method
