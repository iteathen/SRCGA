.class Ljavafx/scene/control/PopupControl$2;
.super Ljavafx/css/StyleableStringProperty;
.source "PopupControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/PopupControl;->skinClassNameProperty()Ljavafx/beans/property/StringProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/PopupControl;


# direct methods
.method constructor <init>(Ljavafx/scene/control/PopupControl;)V
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/PopupControl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/PopupControl$2;->this$0:Ljavafx/scene/control/PopupControl;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/css/StyleableStringProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$2;->this$0:Ljavafx/scene/control/PopupControl;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl$2;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/PopupControl$CSSBridge;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$2;
    # getter for: Ljavafx/scene/control/PopupControl;->SKIN:Ljavafx/css/CssMetaData;
    invoke-static {}, Ljavafx/scene/control/PopupControl;->access$1000()Ljavafx/css/CssMetaData;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$2;
    const-string v1, "skinClassName"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl$2;
    return-object v0
.end method

.method public invalidated()V
    .locals 3

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$2;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl$2;->get()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl$2;->get()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/PopupControl$2;->this$0:Ljavafx/scene/control/PopupControl;

    invoke-static {v2}, Ljavafx/scene/control/PopupControl;->access$000(Ljavafx/scene/control/PopupControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$2;->this$0:Ljavafx/scene/control/PopupControl;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/PopupControl$2;->get()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljavafx/scene/control/Control;->loadSkinClass(Ljavafx/scene/control/Skinnable;Ljava/lang/String;)V

    .line 339
    :cond_0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$2;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/PopupControl$2;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$2;
    move-object v1, p1

    .local v1, "v":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/PopupControl$2;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/css/StyleableStringProperty;->set(Ljava/lang/String;)V

    .line 313
    goto :goto_0
.end method
