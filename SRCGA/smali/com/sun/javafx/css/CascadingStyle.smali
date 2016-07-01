.class public Lcom/sun/javafx/css/CascadingStyle;
.super Ljava/lang/Object;
.source "CascadingStyle.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sun/javafx/css/CascadingStyle;",
        ">;"
    }
.end annotation


# instance fields
.field private final ordinal:I

.field private final pseudoClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;"
        }
    .end annotation
.end field

.field private final skinProp:Z

.field private final specificity:I

.field private final style:Lcom/sun/javafx/css/Style;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/css/Style;Ljava/util/Set;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/Style;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, p1

    .local v1, "style":Lcom/sun/javafx/css/Style;
    move-object v2, p2

    .local v2, "pseudoClasses":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move v3, p3

    .local v3, "specificity":I
    move v4, p4

    .local v4, "ordinal":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/css/CascadingStyle;->style:Lcom/sun/javafx/css/Style;

    .line 61
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/css/CascadingStyle;->pseudoClasses:Ljava/util/Set;

    .line 62
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/css/CascadingStyle;->specificity:I

    .line 63
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/css/CascadingStyle;->ordinal:I

    .line 64
    move-object v5, v0

    const-string v6, "-fx-skin"

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/css/Style;->getDeclaration()Lcom/sun/javafx/css/Declaration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/javafx/css/Declaration;->getProperty()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/javafx/css/CascadingStyle;->skinProp:Z

    .line 65
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sun/javafx/css/CascadingStyle;)I
    .locals 13

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/css/CascadingStyle;
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/CascadingStyle;->style:Lcom/sun/javafx/css/Style;

    invoke-virtual {v11}, Lcom/sun/javafx/css/Style;->getDeclaration()Lcom/sun/javafx/css/Declaration;

    move-result-object v11

    move-object v2, v11

    .line 150
    .local v2, "decl":Lcom/sun/javafx/css/Declaration;
    move-object v11, v2

    if-eqz v11, :cond_1

    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/css/Declaration;->isImportant()Z

    move-result v11

    :goto_0
    move v3, v11

    .line 151
    .local v3, "important":Z
    move-object v11, v2

    if-eqz v11, :cond_2

    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/css/Declaration;->getRule()Lcom/sun/javafx/css/Rule;

    move-result-object v11

    :goto_1
    move-object v4, v11

    .line 152
    .local v4, "rule":Lcom/sun/javafx/css/Rule;
    move-object v11, v4

    if-eqz v11, :cond_3

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/javafx/css/Rule;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v11

    :goto_2
    move-object v5, v11

    .line 154
    .local v5, "source":Ljavafx/css/StyleOrigin;
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/css/CascadingStyle;->style:Lcom/sun/javafx/css/Style;

    invoke-virtual {v11}, Lcom/sun/javafx/css/Style;->getDeclaration()Lcom/sun/javafx/css/Declaration;

    move-result-object v11

    move-object v6, v11

    .line 155
    .local v6, "otherDecl":Lcom/sun/javafx/css/Declaration;
    move-object v11, v6

    if-eqz v11, :cond_4

    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/css/Declaration;->isImportant()Z

    move-result v11

    :goto_3
    move v7, v11

    .line 156
    .local v7, "otherImportant":Z
    move-object v11, v6

    if-eqz v11, :cond_5

    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/css/Declaration;->getRule()Lcom/sun/javafx/css/Rule;

    move-result-object v11

    :goto_4
    move-object v8, v11

    .line 157
    .local v8, "otherRule":Lcom/sun/javafx/css/Rule;
    move-object v11, v8

    if-eqz v11, :cond_6

    move-object v11, v8

    invoke-virtual {v11}, Lcom/sun/javafx/css/Rule;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v11

    :goto_5
    move-object v9, v11

    .line 159
    .local v9, "otherSource":Ljavafx/css/StyleOrigin;
    const/4 v11, 0x0

    move v10, v11

    .line 161
    .local v10, "c":I
    move-object v11, v0

    iget-boolean v11, v11, Lcom/sun/javafx/css/CascadingStyle;->skinProp:Z

    if-eqz v11, :cond_7

    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/javafx/css/CascadingStyle;->skinProp:Z

    if-nez v11, :cond_7

    .line 162
    const/4 v11, 0x1

    move v10, v11

    .line 173
    :goto_6
    move v11, v10

    if-nez v11, :cond_0

    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/css/CascadingStyle;->ordinal:I

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/css/CascadingStyle;->ordinal:I

    sub-int/2addr v11, v12

    move v10, v11

    .line 174
    :cond_0
    move v11, v10

    move v0, v11

    .end local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    return v0

    .line 150
    .end local v3    # "important":Z
    .end local v4    # "rule":Lcom/sun/javafx/css/Rule;
    .end local v5    # "source":Ljavafx/css/StyleOrigin;
    .end local v6    # "otherDecl":Lcom/sun/javafx/css/Declaration;
    .end local v7    # "otherImportant":Z
    .end local v8    # "otherRule":Lcom/sun/javafx/css/Rule;
    .end local v9    # "otherSource":Ljavafx/css/StyleOrigin;
    .end local v10    # "c":I
    .restart local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 151
    .restart local v3    # "important":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 152
    .restart local v4    # "rule":Lcom/sun/javafx/css/Rule;
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 155
    .restart local v5    # "source":Ljavafx/css/StyleOrigin;
    .restart local v6    # "otherDecl":Lcom/sun/javafx/css/Declaration;
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 156
    .restart local v7    # "otherImportant":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 157
    .restart local v8    # "otherRule":Lcom/sun/javafx/css/Rule;
    :cond_6
    const/4 v11, 0x0

    goto :goto_5

    .line 163
    .restart local v9    # "otherSource":Ljavafx/css/StyleOrigin;
    .restart local v10    # "c":I
    :cond_7
    move v11, v3

    move v12, v7

    if-eq v11, v12, :cond_9

    .line 164
    move v11, v3

    if-eqz v11, :cond_8

    const/4 v11, -0x1

    :goto_7
    move v10, v11

    goto :goto_6

    :cond_8
    const/4 v11, 0x1

    goto :goto_7

    .line 165
    :cond_9
    move-object v11, v5

    move-object v12, v9

    if-eq v11, v12, :cond_c

    .line 166
    move-object v11, v5

    if-nez v11, :cond_a

    const/4 v11, -0x1

    move v10, v11

    goto :goto_6

    .line 167
    :cond_a
    move-object v11, v9

    if-nez v11, :cond_b

    const/4 v11, 0x1

    move v10, v11

    goto :goto_6

    .line 168
    :cond_b
    move-object v11, v9

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljavafx/css/StyleOrigin;->compareTo(Ljava/lang/Enum;)I

    move-result v11

    move v10, v11

    goto :goto_6

    .line 170
    :cond_c
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/css/CascadingStyle;->specificity:I

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/css/CascadingStyle;->specificity:I

    sub-int/2addr v11, v12

    move v10, v11

    goto :goto_6
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/CascadingStyle;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/CascadingStyle;->compareTo(Lcom/sun/javafx/css/CascadingStyle;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 101
    const/4 v5, 0x0

    move v0, v5

    .line 119
    .end local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    :goto_0
    return v0

    .line 103
    .restart local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 104
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 106
    :cond_1
    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/css/CascadingStyle;

    move-object v2, v5

    .line 108
    .local v2, "other":Lcom/sun/javafx/css/CascadingStyle;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/css/CascadingStyle;->getProperty()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 109
    .local v3, "property":Ljava/lang/String;
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/css/CascadingStyle;->getProperty()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 110
    .local v4, "otherProperty":Ljava/lang/String;
    move-object v5, v3

    if-nez v5, :cond_3

    move-object v5, v4

    if-eqz v5, :cond_4

    .line 111
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 110
    :cond_3
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/CascadingStyle;->pseudoClasses:Ljava/util/Set;

    if-nez v5, :cond_6

    move-object v5, v2

    iget-object v5, v5, Lcom/sun/javafx/css/CascadingStyle;->pseudoClasses:Ljava/util/Set;

    if-eqz v5, :cond_7

    .line 116
    :cond_5
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 115
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/CascadingStyle;->pseudoClasses:Ljava/util/Set;

    move-object v6, v2

    iget-object v6, v6, Lcom/sun/javafx/css/CascadingStyle;->pseudoClasses:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 119
    :cond_7
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method public getOrigin()Ljavafx/css/StyleOrigin;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/css/CascadingStyle;->getRule()Lcom/sun/javafx/css/Rule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/css/Rule;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    return-object v0
.end method

.method public getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CascadingStyle;->style:Lcom/sun/javafx/css/Style;

    invoke-virtual {v1}, Lcom/sun/javafx/css/Style;->getDeclaration()Lcom/sun/javafx/css/Declaration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/css/Declaration;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CascadingStyle;->style:Lcom/sun/javafx/css/Style;

    invoke-virtual {v1}, Lcom/sun/javafx/css/Style;->getDeclaration()Lcom/sun/javafx/css/Declaration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/css/Declaration;->getProperty()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    return-object v0
.end method

.method public getRule()Lcom/sun/javafx/css/Rule;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CascadingStyle;->style:Lcom/sun/javafx/css/Style;

    invoke-virtual {v1}, Lcom/sun/javafx/css/Style;->getDeclaration()Lcom/sun/javafx/css/Declaration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/css/Declaration;->getRule()Lcom/sun/javafx/css/Rule;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    return-object v0
.end method

.method public getSelector()Lcom/sun/javafx/css/Selector;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CascadingStyle;->style:Lcom/sun/javafx/css/Style;

    invoke-virtual {v1}, Lcom/sun/javafx/css/Style;->getSelector()Lcom/sun/javafx/css/Selector;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    return-object v0
.end method

.method public getStyle()Lcom/sun/javafx/css/Style;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CascadingStyle;->style:Lcom/sun/javafx/css/Style;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    const/4 v3, 0x7

    move v1, v3

    .line 130
    .local v1, "hash":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/css/CascadingStyle;->getProperty()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 131
    .local v2, "property":Ljava/lang/String;
    const/16 v3, 0x2f

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    move v1, v3

    .line 132
    const/16 v3, 0x2f

    move v4, v1

    mul-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/CascadingStyle;->pseudoClasses:Ljava/util/Set;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/CascadingStyle;->pseudoClasses:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    move v1, v3

    .line 133
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    return v0

    .line 131
    .restart local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 132
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CascadingStyle;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/css/CascadingStyle;->getProperty()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CascadingStyle;
    return-object v0
.end method
