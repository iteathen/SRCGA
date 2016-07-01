.class public final Lcom/sun/javafx/css/Style;
.super Ljava/lang/Object;
.source "Style.java"


# instance fields
.field private final declaration:Lcom/sun/javafx/css/Declaration;

.field private final selector:Lcom/sun/javafx/css/Selector;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/css/Selector;Lcom/sun/javafx/css/Declaration;)V
    .locals 5

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Style;
    move-object v1, p1

    .local v1, "selector":Lcom/sun/javafx/css/Selector;
    move-object v2, p2

    .local v2, "declaration":Lcom/sun/javafx/css/Declaration;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/css/Style;->selector:Lcom/sun/javafx/css/Selector;

    .line 53
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/css/Style;->declaration:Lcom/sun/javafx/css/Declaration;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Style;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    .line 58
    const/4 v3, 0x1

    move v0, v3

    .line 73
    .end local v0    # "this":Lcom/sun/javafx/css/Style;
    :goto_0
    return v0

    .line 60
    .restart local v0    # "this":Lcom/sun/javafx/css/Style;
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 61
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 63
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 64
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 66
    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/Style;

    move-object v2, v3

    .line 67
    .local v2, "other":Lcom/sun/javafx/css/Style;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->selector:Lcom/sun/javafx/css/Selector;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/Style;->selector:Lcom/sun/javafx/css/Selector;

    if-eq v3, v4, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->selector:Lcom/sun/javafx/css/Selector;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->selector:Lcom/sun/javafx/css/Selector;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/Style;->selector:Lcom/sun/javafx/css/Selector;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 68
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 70
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->declaration:Lcom/sun/javafx/css/Declaration;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/Style;->declaration:Lcom/sun/javafx/css/Declaration;

    if-eq v3, v4, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->declaration:Lcom/sun/javafx/css/Declaration;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->declaration:Lcom/sun/javafx/css/Declaration;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/Style;->declaration:Lcom/sun/javafx/css/Declaration;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/css/Declaration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 71
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 73
    :cond_6
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getDeclaration()Lcom/sun/javafx/css/Declaration;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Style;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Style;->declaration:Lcom/sun/javafx/css/Declaration;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Style;
    return-object v0
.end method

.method public getSelector()Lcom/sun/javafx/css/Selector;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Style;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Style;->selector:Lcom/sun/javafx/css/Selector;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Style;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Style;
    const/4 v2, 0x3

    move v1, v2

    .line 78
    .local v1, "hash":I
    const/16 v2, 0x53

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->selector:Lcom/sun/javafx/css/Selector;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->selector:Lcom/sun/javafx/css/Selector;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 79
    const/16 v2, 0x53

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->declaration:Lcom/sun/javafx/css/Declaration;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->declaration:Lcom/sun/javafx/css/Declaration;

    invoke-virtual {v3}, Lcom/sun/javafx/css/Declaration;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 80
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/Style;
    return v0

    .line 78
    .restart local v0    # "this":Lcom/sun/javafx/css/Style;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 79
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Style;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->selector:Lcom/sun/javafx/css/Selector;

    .line 85
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " { "

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Style;->declaration:Lcom/sun/javafx/css/Declaration;

    .line 87
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " } "

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, v2

    .line 89
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/Style;
    return-object v0
.end method
