.class Ljavafx/scene/control/Tooltip$2;
.super Ljavafx/css/StyleableObjectProperty;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Tooltip;
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

.field final synthetic this$0:Ljavafx/scene/control/Tooltip;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Tooltip;Ljavafx/scene/text/Font;)V
    .locals 5

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Tooltip;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/text/Font;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/Tooltip$2;->this$0:Ljavafx/scene/control/Tooltip;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    .line 267
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/control/Tooltip$2;->fontSetByCss:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/text/Font;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Tooltip$2;->applyStyle(Ljavafx/css/StyleOrigin;Ljavafx/scene/text/Font;)V

    return-void
.end method

.method public applyStyle(Ljavafx/css/StyleOrigin;Ljavafx/scene/text/Font;)V
    .locals 8

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$2;
    move-object v1, p1

    .local v1, "newOrigin":Ljavafx/css/StyleOrigin;
    move-object v2, p2

    .local v2, "value":Ljavafx/scene/text/Font;
    move-object v5, v0

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, v5, Ljavafx/scene/control/Tooltip$2;->fontSetByCss:Z

    .line 275
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/css/StyleableObjectProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/control/Tooltip$2;->fontSetByCss:Z

    .line 280
    .line 281
    return-void

    .line 276
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 277
    .local v3, "e":Ljava/lang/Exception;
    move-object v5, v3

    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/control/Tooltip$2;->fontSetByCss:Z

    move-object v5, v4

    throw v5
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip$2;->this$0:Ljavafx/scene/control/Tooltip;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$2;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Tooltip$CSSBridge;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$2;
    # getter for: Ljavafx/scene/control/Tooltip;->FONT:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$600()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$2;
    const-string v1, "font"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$2;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/Tooltip$2;->fontSetByCss:Z

    if-nez v1, :cond_0

    .line 296
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip$2;->this$0:Ljavafx/scene/control/Tooltip;

    iget-object v1, v1, Ljavafx/scene/control/Tooltip;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl$CSSBridge;->impl_reapplyCSS()V

    .line 298
    :cond_0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/text/Font;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Tooltip$2;->set(Ljavafx/scene/text/Font;)V

    return-void
.end method

.method public set(Ljavafx/scene/text/Font;)V
    .locals 6

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$2;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/Font;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Tooltip$2;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/text/Font;

    move-object v2, v4

    .line 285
    .local v2, "oldValue":Ljavafx/scene/text/Font;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Tooltip$2;->this$0:Ljavafx/scene/control/Tooltip;

    invoke-static {v4}, Ljavafx/scene/control/Tooltip;->access$500(Ljavafx/scene/control/Tooltip;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    check-cast v4, Ljavafx/css/StyleableObjectProperty;

    invoke-virtual {v4}, Ljavafx/css/StyleableObjectProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v4

    move-object v3, v4

    .line 286
    .local v3, "origin":Ljavafx/css/StyleOrigin;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Font;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 287
    :cond_0
    :goto_0
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Ljavafx/css/StyleableObjectProperty;->set(Ljava/lang/Object;)V

    .line 289
    :cond_1
    return-void

    .line 286
    :cond_2
    move-object v4, v2

    if-eqz v4, :cond_1

    goto :goto_0
.end method
