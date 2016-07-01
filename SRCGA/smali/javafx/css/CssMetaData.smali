.class public abstract Ljavafx/css/CssMetaData;
.super Ljava/lang/Object;
.source "CssMetaData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljavafx/css/Styleable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final converter:Ljavafx/css/StyleConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/StyleConverter",
            "<*TV;>;"
        }
    .end annotation
.end field

.field private final inherits:Z

.field private final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final property:Ljava/lang/String;

.field private final subProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavafx/css/StyleConverter",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*TV;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;ZLjava/util/List;)V

    .line 283
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavafx/css/StyleConverter",
            "<*TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*TV;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljava/lang/Object;, "TV;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;ZLjava/util/List;)V

    .line 271
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavafx/css/StyleConverter",
            "<*TV;>;TV;Z)V"
        }
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*TV;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljava/lang/Object;, "TV;"
    move v4, p4

    .local v4, "inherits":Z
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Ljavafx/css/CssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;ZLjava/util/List;)V

    .line 257
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;ZLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavafx/css/StyleConverter",
            "<*TV;>;TV;Z",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;)V"
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*TV;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljava/lang/Object;, "TV;"
    move v4, p4

    .local v4, "inherits":Z
    move-object v5, p5

    .local v5, "subProperties":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 233
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/css/CssMetaData;->property:Ljava/lang/String;

    .line 234
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafx/css/CssMetaData;->converter:Ljavafx/css/StyleConverter;

    .line 235
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/css/CssMetaData;->initialValue:Ljava/lang/Object;

    .line 236
    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Ljavafx/css/CssMetaData;->inherits:Z

    .line 237
    move-object v6, v0

    move-object v7, v5

    if-eqz v7, :cond_1

    move-object v7, v5

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    :goto_0
    iput-object v7, v6, Ljavafx/css/CssMetaData;->subProperties:Ljava/util/List;

    .line 239
    move-object v6, v0

    iget-object v6, v6, Ljavafx/css/CssMetaData;->property:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/css/CssMetaData;->converter:Ljavafx/css/StyleConverter;

    if-nez v6, :cond_2

    .line 240
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "neither property nor converter can be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 237
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 242
    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 291
    const/4 v3, 0x0

    move v0, v3

    .line 300
    .end local v0    # "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    :goto_0
    return v0

    .line 293
    .restart local v0    # "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 294
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 296
    :cond_1
    move-object v3, v1

    check-cast v3, Ljavafx/css/CssMetaData;

    move-object v2, v3

    .line 297
    .local v2, "other":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/css/CssMetaData;->property:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v3, v2

    iget-object v3, v3, Ljavafx/css/CssMetaData;->property:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 298
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 297
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/css/CssMetaData;->property:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/css/CssMetaData;->property:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public final getConverter()Ljavafx/css/StyleConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/StyleConverter",
            "<*TV;>;"
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/CssMetaData;->converter:Ljavafx/css/StyleConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    return-object v0
.end method

.method public getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TV;"
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/CssMetaData;->initialValue:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    return-object v0
.end method

.method public final getProperty()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/CssMetaData;->property:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    return-object v0
.end method

.method public abstract getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljavafx/css/StyleableProperty",
            "<TV;>;"
        }
    .end annotation
.end method

.method public final getSubProperties()Ljava/util/List;
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
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/CssMetaData;->subProperties:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    const/4 v2, 0x3

    move v1, v2

    .line 306
    .local v1, "hash":I
    const/16 v2, 0x13

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/css/CssMetaData;->property:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/css/CssMetaData;->property:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 307
    move v2, v1

    move v0, v2

    .end local v0    # "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    return v0

    .line 306
    .restart local v0    # "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final isInherits()Z
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/css/CssMetaData;->inherits:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    return v0
.end method

.method public abstract isSettable(Ljavafx/css/Styleable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public set(Ljavafx/css/Styleable;Ljava/lang/Object;Ljavafx/css/StyleOrigin;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TV;",
            "Ljavafx/css/StyleOrigin;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v3, p3

    .local v3, "origin":Ljavafx/css/StyleOrigin;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v7

    move-object v4, v7

    .line 126
    .local v4, "styleableProperty":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<TV;>;"
    move-object v7, v4

    invoke-interface {v7}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v7

    move-object v5, v7

    .line 127
    .local v5, "currentOrigin":Ljavafx/css/StyleOrigin;
    move-object v7, v4

    invoke-interface {v7}, Ljavafx/css/StyleableProperty;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 130
    .local v6, "currentValue":Ljava/lang/Object;, "TV;"
    move-object v7, v5

    move-object v8, v3

    if-ne v7, v8, :cond_0

    move-object v7, v6

    if-eqz v7, :cond_2

    move-object v7, v6

    move-object v8, v2

    .line 132
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 135
    :cond_0
    :goto_0
    move-object v7, v4

    move-object v8, v3

    move-object v9, v2

    invoke-interface {v7, v8, v9}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 138
    :cond_1
    return-void

    .line 132
    :cond_2
    move-object v7, v2

    if-eqz v7, :cond_1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "CSSProperty {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "property: "

    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/CssMetaData;->property:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", converter: "

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/CssMetaData;->converter:Ljavafx/css/StyleConverter;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", initalValue: "

    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/CssMetaData;->initialValue:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inherits: "

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/css/CssMetaData;->inherits:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subProperties: "

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/CssMetaData;->subProperties:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/CssMetaData;->subProperties:Ljava/util/List;

    .line 318
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    return-object v0

    .line 318
    .restart local v0    # "this":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TV;>;"
    :cond_0
    const-string v2, "[]"

    goto :goto_0
.end method
