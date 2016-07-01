.class final Ljavafx/scene/layout/Region$MinPrefMaxProperty;
.super Ljavafx/css/StyleableDoubleProperty;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MinPrefMaxProperty"
.end annotation


# instance fields
.field private final cssMetaData:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/scene/layout/Region;


# direct methods
.method constructor <init>(Ljavafx/scene/layout/Region;Ljava/lang/String;DLjavafx/css/CssMetaData;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 970
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Region$MinPrefMaxProperty;
    move-object v2, p1

    move-object v3, p2

    .local v3, "name":Ljava/lang/String;
    move-wide v4, p3

    .local v4, "initialValue":D
    move-object/from16 v6, p5

    .local v6, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;Ljava/lang/Number;>;"
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Ljavafx/scene/layout/Region$MinPrefMaxProperty;->this$0:Ljavafx/scene/layout/Region;

    .line 971
    move-object v7, v1

    move-wide v8, v4

    invoke-direct {v7, v8, v9}, Ljavafx/css/StyleableDoubleProperty;-><init>(D)V

    .line 972
    move-object v7, v1

    move-object v8, v3

    iput-object v8, v7, Ljavafx/scene/layout/Region$MinPrefMaxProperty;->name:Ljava/lang/String;

    .line 973
    move-object v7, v1

    move-object v8, v6

    iput-object v8, v7, Ljavafx/scene/layout/Region$MinPrefMaxProperty;->cssMetaData:Ljavafx/css/CssMetaData;

    .line 974
    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 977
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$MinPrefMaxProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$MinPrefMaxProperty;->this$0:Ljavafx/scene/layout/Region;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$MinPrefMaxProperty;
    return-object v0
.end method

.method public getCssMetaData()Ljavafx/css/CssMetaData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 982
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$MinPrefMaxProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$MinPrefMaxProperty;->cssMetaData:Ljavafx/css/CssMetaData;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$MinPrefMaxProperty;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 978
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$MinPrefMaxProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$MinPrefMaxProperty;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Region$MinPrefMaxProperty;
    return-object v0
.end method

.method public invalidated()V
    .locals 2

    .prologue
    .line 976
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$MinPrefMaxProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Region$MinPrefMaxProperty;->this$0:Ljavafx/scene/layout/Region;

    invoke-static {v1}, Ljavafx/scene/layout/Region;->access$1900(Ljavafx/scene/layout/Region;)V

    return-void
.end method
