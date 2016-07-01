.class public Ljavafx/scene/control/PopupControl$CSSBridge;
.super Ljavafx/scene/layout/Pane;
.source "PopupControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/PopupControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CSSBridge"
.end annotation


# instance fields
.field private final popupControl:Ljavafx/scene/control/PopupControl;

.field final synthetic this$0:Ljavafx/scene/control/PopupControl;


# direct methods
.method protected constructor <init>(Ljavafx/scene/control/PopupControl;)V
    .locals 4

    .prologue
    .line 1111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$CSSBridge;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/PopupControl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 1113
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    iput-object v3, v2, Ljavafx/scene/control/PopupControl$CSSBridge;->popupControl:Ljavafx/scene/control/PopupControl;

    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/control/PopupControl$CSSBridge;)Ljavafx/scene/control/PopupControl;
    .locals 2

    .prologue
    .line 1111
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/PopupControl$CSSBridge;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$CSSBridge;->popupControl:Ljavafx/scene/control/PopupControl;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/PopupControl$CSSBridge;
    return-object v0
.end method


# virtual methods
.method public getCssMetaData()Ljava/util/List;
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
    .line 1152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$CSSBridge;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->getCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl$CSSBridge;
    return-object v0
.end method

.method public getStyleableParent()Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 1140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$CSSBridge;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl$CSSBridge;
    return-object v0
.end method

.method public impl_getAllParentStylesheets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$CSSBridge;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/PopupControl$CSSBridge;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v2

    move-object v1, v2

    .line 1162
    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/Parent;

    if-eqz v2, :cond_0

    .line 1163
    move-object v2, v1

    check-cast v2, Ljavafx/scene/Parent;

    invoke-virtual {v2}, Ljavafx/scene/Parent;->impl_getAllParentStylesheets()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 1165
    .end local v0    # "this":Ljavafx/scene/control/PopupControl$CSSBridge;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/PopupControl$CSSBridge;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method protected impl_processCSS(Ljavafx/beans/value/WritableValue;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/WritableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$CSSBridge;
    move-object v1, p1

    .local v1, "unused":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<Ljava/lang/Boolean;>;"
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Ljavafx/scene/layout/Pane;->impl_processCSS(Ljavafx/beans/value/WritableValue;)V

    .line 1176
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    invoke-virtual {v6}, Ljavafx/scene/control/PopupControl;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1178
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    invoke-virtual {v6}, Ljavafx/scene/control/PopupControl;->createDefaultSkin()Ljavafx/scene/control/Skin;

    move-result-object v6

    move-object v2, v6

    .line 1179
    .local v2, "defaultSkin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 1180
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    invoke-virtual {v6}, Ljavafx/scene/control/PopupControl;->skinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1181
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Ljavafx/scene/layout/Pane;->impl_processCSS(Ljavafx/beans/value/WritableValue;)V

    .line 1193
    .end local v2    # "defaultSkin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    :cond_0
    :goto_0
    return-void

    .line 1183
    .restart local v2    # "defaultSkin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The -fx-skin property has not been defined in CSS for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and createDefaultSkin() returned null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 1185
    .local v3, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v4, v6

    .line 1186
    .local v4, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 1187
    new-instance v6, Lcom/sun/javafx/css/CssError;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 1188
    .local v5, "error":Lcom/sun/javafx/css/CssError;
    move-object v6, v4

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1190
    .end local v5    # "error":Lcom/sun/javafx/css/CssError;
    :cond_2
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 4

    .prologue
    .line 1125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl$CSSBridge;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/PopupControl;->access$202(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v1

    .line 1126
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/PopupControl;->access$302(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v1

    .line 1127
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/PopupControl;->access$402(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v1

    .line 1128
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/PopupControl;->access$502(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v1

    .line 1129
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/PopupControl;->access$602(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v1

    .line 1130
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl$CSSBridge;->this$0:Ljavafx/scene/control/PopupControl;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v1, v2, v3}, Ljavafx/scene/control/PopupControl;->access$702(Ljavafx/scene/control/PopupControl;D)D

    move-result-wide v1

    .line 1132
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Pane;->requestLayout()V

    .line 1133
    return-void
.end method

.method protected setSkinClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "skinClassName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1148
    return-void
.end method
