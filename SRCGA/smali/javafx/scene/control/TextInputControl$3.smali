.class Ljavafx/scene/control/TextInputControl$3;
.super Ljavafx/css/StyleableObjectProperty;
.source "TextInputControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TextInputControl;->fontProperty()Ljavafx/beans/property/ObjectProperty;
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

.field final synthetic this$0:Ljavafx/scene/control/TextInputControl;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TextInputControl;Ljavafx/scene/text/Font;)V
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TextInputControl;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/text/Font;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TextInputControl$3;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/css/StyleableObjectProperty;-><init>(Ljava/lang/Object;)V

    .line 200
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/control/TextInputControl$3;->fontSetByCss:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$3;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljavafx/scene/text/Font;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TextInputControl$3;->applyStyle(Ljavafx/css/StyleOrigin;Ljavafx/scene/text/Font;)V

    return-void
.end method

.method public applyStyle(Ljavafx/css/StyleOrigin;Ljavafx/scene/text/Font;)V
    .locals 8

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$3;
    move-object v1, p1

    .local v1, "newOrigin":Ljavafx/css/StyleOrigin;
    move-object v2, p2

    .local v2, "value":Ljavafx/scene/text/Font;
    move-object v5, v0

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, v5, Ljavafx/scene/control/TextInputControl$3;->fontSetByCss:Z

    .line 212
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/css/StyleableObjectProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/control/TextInputControl$3;->fontSetByCss:Z

    .line 217
    .line 219
    return-void

    .line 213
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 214
    .local v3, "e":Ljava/lang/Exception;
    move-object v5, v3

    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/control/TextInputControl$3;->fontSetByCss:Z

    move-object v5, v4

    throw v5
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$3;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$3;->this$0:Ljavafx/scene/control/TextInputControl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$3;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/TextInputControl;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$3;
    # getter for: Ljavafx/scene/control/TextInputControl$StyleableProperties;->FONT:Ljavafx/css/FontCssMetaData;
    invoke-static {}, Ljavafx/scene/control/TextInputControl$StyleableProperties;->access$200()Ljavafx/css/FontCssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$3;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$3;
    const-string v1, "font"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextInputControl$3;
    return-object v0
.end method

.method protected invalidated()V
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$3;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/TextInputControl$3;->fontSetByCss:Z

    if-nez v1, :cond_0

    .line 237
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextInputControl$3;->this$0:Ljavafx/scene/control/TextInputControl;

    invoke-virtual {v1}, Ljavafx/scene/control/TextInputControl;->impl_reapplyCSS()V

    .line 239
    :cond_0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$3;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/text/Font;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TextInputControl$3;->set(Ljavafx/scene/text/Font;)V

    return-void
.end method

.method public set(Ljavafx/scene/text/Font;)V
    .locals 5

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextInputControl$3;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/Font;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TextInputControl$3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/text/Font;

    move-object v2, v3

    .line 225
    .local v2, "oldValue":Ljavafx/scene/text/Font;
    move-object v3, v1

    if-nez v3, :cond_1

    move-object v3, v2

    if-nez v3, :cond_2

    .line 226
    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/text/Font;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/css/StyleableObjectProperty;->set(Ljava/lang/Object;)V

    .line 229
    goto :goto_0
.end method
