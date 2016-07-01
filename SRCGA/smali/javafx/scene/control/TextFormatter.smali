.class public Ljavafx/scene/control/TextFormatter;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TextFormatter$Change;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final IDENTITY_STRING_CONVERTER:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final filter:Ljava/util/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/UnaryOperator",
            "<",
            "Ljavafx/scene/control/TextFormatter$Change;",
            ">;"
        }
    .end annotation
.end field

.field private textUpdater:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Ljavafx/scene/control/TextFormatter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final value:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final valueConverter:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljavafx/scene/control/TextFormatter$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/TextFormatter$1;-><init>()V

    sput-object v0, Ljavafx/scene/control/TextFormatter;->IDENTITY_STRING_CONVERTER:Ljavafx/util/StringConverter;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/UnaryOperator;)V
    .locals 6
    .param p1    # Ljava/util/function/UnaryOperator;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "filter"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<",
            "Ljavafx/scene/control/TextFormatter$Change;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, p1

    .local v1, "filter":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljavafx/scene/control/TextFormatter$Change;>;"
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/TextFormatter;-><init>(Ljavafx/util/StringConverter;Ljava/lang/Object;Ljava/util/function/UnaryOperator;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljavafx/util/StringConverter;)V
    .locals 6
    .param p1    # Ljavafx/util/StringConverter;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "valueConverter"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, p1

    .local v1, "valueConverter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TV;>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/TextFormatter;-><init>(Ljavafx/util/StringConverter;Ljava/lang/Object;Ljava/util/function/UnaryOperator;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljavafx/util/StringConverter;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljavafx/util/StringConverter;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "valueConverter"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "defaultValue"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, p1

    .local v1, "valueConverter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TV;>;"
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/TextFormatter;-><init>(Ljavafx/util/StringConverter;Ljava/lang/Object;Ljava/util/function/UnaryOperator;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljavafx/util/StringConverter;Ljava/lang/Object;Ljava/util/function/UnaryOperator;)V
    .locals 9
    .param p1    # Ljavafx/util/StringConverter;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "valueConverter"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "defaultValue"
        .end annotation
    .end param
    .param p3    # Ljava/util/function/UnaryOperator;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "filter"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TV;>;TV;",
            "Ljava/util/function/UnaryOperator",
            "<",
            "Ljavafx/scene/control/TextFormatter$Change;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, p1

    .local v1, "valueConverter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TV;>;"
    move-object v2, p2

    .local v2, "defaultValue":Ljava/lang/Object;, "TV;"
    move-object v3, p3

    .local v3, "filter":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljavafx/scene/control/TextFormatter$Change;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 147
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/TextFormatter$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljavafx/scene/control/TextFormatter$2;-><init>(Ljavafx/scene/control/TextFormatter;)V

    iput-object v5, v4, Ljavafx/scene/control/TextFormatter;->value:Ljavafx/beans/property/ObjectProperty;

    .line 93
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/control/TextFormatter;->filter:Ljava/util/function/UnaryOperator;

    .line 94
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TextFormatter;->valueConverter:Ljavafx/util/StringConverter;

    .line 95
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/TextFormatter;->setValue(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/TextFormatter;)Ljavafx/util/StringConverter;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextFormatter;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter;->valueConverter:Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TextFormatter;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/TextFormatter;)V
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TextFormatter;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TextFormatter;->updateText()V

    return-void
.end method

.method private updateText()V
    .locals 3

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter;->textUpdater:Ljava/util/function/Consumer;

    if-eqz v1, :cond_0

    .line 186
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter;->textUpdater:Ljava/util/function/Consumer;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method bindToControl(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljavafx/scene/control/TextFormatter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, p1

    .local v1, "updater":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljavafx/scene/control/TextFormatter<*>;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextFormatter;->textUpdater:Ljava/util/function/Consumer;

    if-eqz v2, :cond_0

    .line 192
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Formatter is already used in other control"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TextFormatter;->textUpdater:Ljava/util/function/Consumer;

    .line 195
    return-void
.end method

.method public final getFilter()Ljava/util/function/UnaryOperator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/UnaryOperator",
            "<",
            "Ljavafx/scene/control/TextFormatter$Change;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter;->filter:Ljava/util/function/UnaryOperator;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter;->value:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    return-object v0
.end method

.method public final getValueConverter()Ljavafx/util/StringConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/StringConverter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter;->valueConverter:Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextFormatter;->valueConverter:Ljavafx/util/StringConverter;

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Value changes are not supported when valueConverter is not set"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TextFormatter;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method unbindFromControl()V
    .locals 3

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/TextFormatter;->textUpdater:Ljava/util/function/Consumer;

    .line 199
    return-void
.end method

.method updateValue(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TextFormatter;->value:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/control/TextFormatter;->valueConverter:Ljavafx/util/StringConverter;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/util/StringConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 205
    .local v2, "v":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TextFormatter;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 210
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TextFormatter;->updateText()V

    goto :goto_0
.end method

.method public final valueProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TextFormatter;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TextFormatter;, "Ljavafx/scene/control/TextFormatter<TV;>;"
    return-object v0
.end method
