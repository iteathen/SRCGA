.class Lcom/sun/javafx/css/StyleManager$Key;
.super Ljava/lang/Object;
.source "StyleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/StyleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field id:Ljava/lang/String;

.field final styleClasses:Lcom/sun/javafx/css/StyleClassSet;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 2236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$Key;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2237
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/css/StyleClassSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/css/StyleClassSet;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/StyleManager$Key;->styleClasses:Lcom/sun/javafx/css/StyleClassSet;

    .line 2238
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/StyleManager$1;)V
    .locals 3

    .prologue
    .line 2226
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$Key;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/StyleManager$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/StyleManager$Key;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 2242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$Key;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 2243
    const/4 v3, 0x1

    move v0, v3

    .line 2258
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$Key;
    :goto_0
    return v0

    .line 2245
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager$Key;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/css/StyleManager$Key;

    if-eqz v3, :cond_7

    .line 2246
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/StyleManager$Key;

    move-object v2, v3

    .line 2248
    .local v2, "other":Lcom/sun/javafx/css/StyleManager$Key;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->className:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->className:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2249
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 2248
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->className:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/StyleManager$Key;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2252
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->id:Ljava/lang/String;

    if-nez v3, :cond_5

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->id:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 2253
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 2252
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->id:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/StyleManager$Key;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2256
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->styleClasses:Lcom/sun/javafx/css/StyleClassSet;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/StyleManager$Key;->styleClasses:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/css/StyleClassSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 2258
    .end local v2    # "other":Lcom/sun/javafx/css/StyleManager$Key;
    :cond_7
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 2263
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$Key;
    const/4 v2, 0x7

    move v1, v2

    .line 2264
    .local v1, "hash":I
    const/16 v2, 0x1d

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->className:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->className:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 2265
    const/16 v2, 0x1d

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->id:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->id:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    move v1, v2

    .line 2266
    const/16 v2, 0x1d

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleManager$Key;->styleClasses:Lcom/sun/javafx/css/StyleClassSet;

    invoke-virtual {v3}, Lcom/sun/javafx/css/StyleClassSet;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 2267
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$Key;
    return v0

    .line 2264
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager$Key;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2265
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
