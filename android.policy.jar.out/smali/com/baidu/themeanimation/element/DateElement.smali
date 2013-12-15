.class public Lcom/baidu/themeanimation/element/DateElement;
.super Lcom/baidu/themeanimation/element/TextElement;
.source "DateElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/DateElement$Lunar;
    }
.end annotation


# instance fields
.field mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/TextElement;-><init>()V

    .line 19
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/DateElement;->setValue(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/themeanimation/element/DateElement;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public onTimeTick(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/DateElement;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/DateElement;->setFormat(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 5
    .parameter "format"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/TextElement;->setFormat(Ljava/lang/String;)V

    .line 39
    if-eqz p1, :cond_1

    .line 41
    const-string v4, "NNNN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    new-instance v1, Lcom/baidu/themeanimation/element/DateElement$Lunar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/baidu/themeanimation/element/DateElement$Lunar;-><init>(Ljava/util/Calendar;)V

    .line 43
    .local v1, lunar:Lcom/baidu/themeanimation/element/DateElement$Lunar;
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/DateElement$Lunar;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, lunarString:Ljava/lang/String;
    const-string v4, "NNNN"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    .end local v1           #lunar:Lcom/baidu/themeanimation/element/DateElement$Lunar;
    .end local v2           #lunarString:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 50
    .local v3, sdFormat:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, dateString:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/DateElement;->setText(Ljava/lang/String;)V

    .line 56
    .end local v0           #dateString:Ljava/lang/String;
    .end local v3           #sdFormat:Ljava/text/SimpleDateFormat;
    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/baidu/themeanimation/element/DateElement;->mValue:Ljava/lang/String;

    .line 24
    return-void
.end method
