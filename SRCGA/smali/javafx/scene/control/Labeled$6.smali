.class Ljavafx/scene/control/Labeled$6;
.super Ljavafx/css/StyleableObjectProperty;
.source "Labeled.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/Labeled;->fontProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/css/StyleableObjectProperty",
        "<",
        "Ljavafx/scene/text/Font;",
        ">;"
    }
.end annotation


# instance fields
.field private fontSetByCss:Z

.field final synthetic this$0:Ljavafx/scene/control/Labeled;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Labeled;Ljavafx/scene/text/Font;)V
    .locals 5

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$6;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Labeled;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/text/Font;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Labeled$6;->this$0:Ljavafx/scene/control/Labeled;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    .line 327
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/control/Labeled$6;->fontSetByCss:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$6;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/text/Font;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Labeled$6;->applyStyle(Ljavafx/css/StyleOrigin;Ljavafx/scene/text/Font;)V

    return-void
.end method

.method public applyStyle(Ljavafx/css/StyleOrigin;Ljavafx/scene/text/Font;)V
    .locals 8

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$6;
    move-object v1, p1

    .local v1, "newOrigin":Ljavafx/css/StyleOrigin;
    move-object v2, p2

    .local v2, "value":Ljavafx/scene/text/Font;
    move-object v5, v0

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, v5, Ljavafx/scene/control/Labeled$6;->fontSetByCss:Z

    .line 339
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/css/StyleableObjectProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/control/Labeled$6;->fontSetByCss:Z

    .line 344
    .line 345
    return-void

    .line 340
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 341
    .local v3, "e":Ljava/lang/Exception;
    move-object v5, v3

    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/control/Labeled$6;->fontSetByCss:Z

    move-object v5, v4

    throw v5
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$6;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled$6;->this$0:Ljavafx/scene/control/Labeled;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$6;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Labeled;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$6;
    # getter for: Ljavafx/scene/control/Labeled$StyleableProperties;->FONT:Ljavafx/css/FontCssMetaData;
    invoke-static {}, Ljavafx/scene/control/Labeled$StyleableProperties;->access$500()Ljavafx/css/FontCssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$6;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$6;
    const-string v1, "font"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Labeled$6;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$6;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/Labeled$6;->fontSetByCss:Z

    if-nez v1, :cond_0

    .line 363
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Labeled$6;->this$0:Ljavafx/scene/control/Labeled;

    invoke-virtual {v1}, Ljavafx/scene/control/Labeled;->impl_reapplyCSS()V

    .line 365
    :cond_0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$6;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/text/Font;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Labeled$6;->set(Ljavafx/scene/text/Font;)V

    return-void
.end method

.method public set(Ljavafx/scene/text/Font;)V
    .locals 5

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Labeled$6;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/Font;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Labeled$6;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/text/Font;

    move-object v2, v3

    .line 351
    .local v2, "oldValue":Ljavafx/scene/text/Font;
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/text/Font;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    :goto_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/css/StyleableObjectProperty;->set(Ljava/lang/Object;)V

    .line 355
    :cond_0
    return-void

    .line 351
    :cond_1
    move-object v3, v2

    if-eqz v3, :cond_0

    goto :goto_0
.end method
