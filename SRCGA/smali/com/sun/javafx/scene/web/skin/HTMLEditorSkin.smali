.class public Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;
.super Ljava/lang/Object;
.source "HTMLEditorSkin.java"

# interfaces
.implements Ljavafx/scene/control/Skin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/scene/control/Skin",
        "<",
        "Ljavafx/scene/web/HTMLEditor;",
        ">;"
    }
.end annotation


# instance fields
.field private final editor:Ljavafx/scene/web/HTMLEditor;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavafx/scene/web/HTMLEditor;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;
    move-object v1, p1

    .local v1, "editor":Ljavafx/scene/web/HTMLEditor;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;->editor:Ljavafx/scene/web/HTMLEditor;

    .line 39
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public getHTMLText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;
    return-object v0
.end method

.method public getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;->editor:Ljavafx/scene/web/HTMLEditor;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;
    return-object v0
.end method

.method public bridge synthetic getSkinnable()Ljavafx/scene/control/Skinnable;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;->getSkinnable()Ljavafx/scene/web/HTMLEditor;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;
    return-object v0
.end method

.method public getSkinnable()Ljavafx/scene/web/HTMLEditor;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;->editor:Ljavafx/scene/web/HTMLEditor;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;
    return-object v0
.end method

.method public setHTMLText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/web/skin/HTMLEditorSkin;->text:Ljava/lang/String;

    .line 47
    return-void
.end method
