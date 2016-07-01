.class Ljavafx/scene/text/Text$1;
.super Ljava/lang/Object;
.source "Text.java"

# interfaces
.implements Lcom/sun/javafx/scene/text/TextSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/text/Text;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/text/Text;


# direct methods
.method constructor <init>(Ljavafx/scene/text/Text;)V
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/text/Text;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/Text$1;->this$0:Ljavafx/scene/text/Text;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$1;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$1;
    return-object v0
.end method

.method public getFont()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$1;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v1}, Ljavafx/scene/text/Text;->access$100(Ljavafx/scene/text/Text;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$1;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text$1;->this$0:Ljavafx/scene/text/Text;

    invoke-static {v1}, Ljavafx/scene/text/Text;->access$000(Ljavafx/scene/text/Text;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text$1;
    return-object v0
.end method
