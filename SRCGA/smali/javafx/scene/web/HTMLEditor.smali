.class public Ljavafx/scene/web/HTMLEditor;
.super Ljavafx/scene/control/Control;
.source "HTMLEditor.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/HTMLEditor;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Control;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/HTMLEditor;
    new-instance v1, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;-><init>(Ljavafx/scene/web/HTMLEditor;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/HTMLEditor;
    return-object v0
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/HTMLEditor;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/HTMLEditor;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;->getHTMLText()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/HTMLEditor;
    return-object v0
.end method

.method public setHtmlText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/HTMLEditor;
    move-object v1, p1

    .local v1, "htmlText":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/HTMLEditor;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;->setHTMLText(Ljava/lang/String;)V

    .line 81
    return-void
.end method
