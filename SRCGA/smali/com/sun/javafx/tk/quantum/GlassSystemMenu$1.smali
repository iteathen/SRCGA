.class Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;
.super Ljava/lang/Object;
.source "GlassSystemMenu.java"

# interfaces
.implements Lcom/sun/glass/ui/MenuItem$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->insertMenuItem(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuItemBase;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

.field final synthetic val$menuitem:Lcom/sun/javafx/menu/MenuItemBase;

.field final synthetic val$parent:Lcom/sun/glass/ui/Menu;


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/javafx/menu/MenuItemBase;Lcom/sun/glass/ui/Menu;)V
    .locals 6

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;->this$0:Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;->val$menuitem:Lcom/sun/javafx/menu/MenuItemBase;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;->val$parent:Lcom/sun/glass/ui/Menu;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;->val$menuitem:Lcom/sun/javafx/menu/MenuItemBase;

    instance-of v2, v2, Lcom/sun/javafx/menu/CheckMenuItemBase;

    if-eqz v2, :cond_2

    .line 225
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;->val$menuitem:Lcom/sun/javafx/menu/MenuItemBase;

    check-cast v2, Lcom/sun/javafx/menu/CheckMenuItemBase;

    move-object v1, v2

    .line 226
    .local v1, "checkItem":Lcom/sun/javafx/menu/CheckMenuItemBase;
    move-object v2, v1

    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/javafx/menu/CheckMenuItemBase;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v2, v3}, Lcom/sun/javafx/menu/CheckMenuItemBase;->setSelected(Z)V

    .line 227
    .line 238
    .end local v1    # "checkItem":Lcom/sun/javafx/menu/CheckMenuItemBase;
    :cond_0
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;->val$menuitem:Lcom/sun/javafx/menu/MenuItemBase;

    invoke-interface {v2}, Lcom/sun/javafx/menu/MenuItemBase;->fire()V

    .line 239
    return-void

    .line 226
    .restart local v1    # "checkItem":Lcom/sun/javafx/menu/CheckMenuItemBase;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 227
    .end local v1    # "checkItem":Lcom/sun/javafx/menu/CheckMenuItemBase;
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;->val$menuitem:Lcom/sun/javafx/menu/MenuItemBase;

    instance-of v2, v2, Lcom/sun/javafx/menu/RadioMenuItemBase;

    if-eqz v2, :cond_0

    .line 232
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;->val$menuitem:Lcom/sun/javafx/menu/MenuItemBase;

    check-cast v2, Lcom/sun/javafx/menu/RadioMenuItemBase;

    move-object v1, v2

    .line 236
    .local v1, "radioItem":Lcom/sun/javafx/menu/RadioMenuItemBase;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sun/javafx/menu/RadioMenuItemBase;->setSelected(Z)V

    goto :goto_1
.end method

.method public validate()V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;->val$parent:Lcom/sun/glass/ui/Menu;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Menu;->getEventHandler()Lcom/sun/glass/ui/Menu$EventHandler;

    move-result-object v3

    move-object v1, v3

    .line 242
    .local v1, "meh":Lcom/sun/glass/ui/Menu$EventHandler;
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;

    move-object v2, v3

    .line 244
    .local v2, "gmeh":Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;->isMenuOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;->val$menuitem:Lcom/sun/javafx/menu/MenuItemBase;

    invoke-interface {v3}, Lcom/sun/javafx/menu/MenuItemBase;->fireValidation()V

    .line 248
    goto :goto_0
.end method
